local config = dofile("data/packages/config.lua")

local function sleep (a) 
	local sec = tonumber(os.clock() + a);
	while (os.clock() < sec) do end
end

local driver = webdriver.create()
driver.GoToUrl("https://www1.flightrising.com/login")

driver.findElementsByXPath('//*[@id="uname"]')[1].sendKeys(config.login)
driver.findElementsByXPath('//*[@id="pword"]')[1].sendKeys(config.password)
driver.findElementsByXPath('//*[@id="big-login-form-button"]')[1].click()

driver.GoToUrl("http://flightrising.com/main.php?p=hoard")
sleep(2)

local food = {}
local buttons = #driver.findElementsByXPath('//*[@id="hoard-pagination"]/div/a') + 1
local foodpoints = {Insect = 0, Meat = 0, Seafood = 0, Plant = 0}
local foodcost = {Insect = 0, Meat = 0, Seafood = 0, Plant = 0}

for i = 1, buttons do
	if i ~= 1 then
		driver.findElementsByXPath('//*[@id="hoard-pagination"]/div/a')[i-1].click()
		sleep(2)
	end
	
	for j = 1, #driver.findElementsByXPath('//*[@id="invent"]/span') do
		driver.findElementsByXPath('//*[@id="invent"]/span['..j..']')[1].click()
		sleep(0.8)
		local type = driver.findElementsByXPath('//*[@id="cluetip"]/div[1]/div/div/div[1]/div[2]')[1].text
		local amount = #driver.findElementsByXPath('//*[@id="invent"]/span['..j..']/select/option')
		local cost = driver.findElementsByXPath('//*[@id="cluetip"]/div[1]/div/div/div[3]')[1].text
		local potency = driver.findElementsByXPath('//*[@id="cluetip"]/div[1]/div/div/div[4]')[1].text
		foodpoints[type] = foodpoints[type] + amount*tonumber(potency)
		foodcost[type] = foodcost[type] + amount*tonumber(cost)
		
		print(j,amount,cost,potency,type)
		driver.findElementsByXPath('//*[@id="food_bar"]/span[1]/a')[1].click()
	end
end

print("\nAmount Cost")
print(foodpoints.Insect, foodcost.Insect, "Insect")
print(foodpoints.Meat, foodcost.Meat, "Meat")
print(foodpoints.Seafood, foodcost.Seafood, "Seafood")
print(foodpoints.Plant, foodcost.Plant, "Plant")

driver.close()
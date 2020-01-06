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
driver.findElementsByXPath('//*[@id="toplinks"]/a[8]')[1].click()
sleep(2)

local rust,iron,gild = 0,0,0

function chester (id)
	driver.findElementsByXPath('//img[@src="/images/cms/trinket/'..id..'.png"]')[1].click()
	sleep(1)
	driver.findElementsByXPath('//*[@id="yes"]')[1].click()
	sleep(1)
	driver.findElementsByXPath('//*[@id="no"]')[1].click()
	sleep(1)
end

while true do
	if not pcall(chester, 574) then break end
	rust = rust + 1
	print("Rusted chest",rust)
end
while true do
	if not pcall(chester, 575) then break end
	iron = iron + 1
	print("Iron chest",iron)
end
while true do
	if not pcall(chester, 576) then break end
	gild = gild + 1
	print("Gilded chest",gild)
end

print("Done, opened "..rust.." rusted, "..iron.." iron and "..gild.." gilded chests, "..(rust+iron+gild).." chests total")
driver.close()
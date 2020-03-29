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

driver.GoToUrl("https://flightrising.com/main.php?p=hoard&tab=app")
sleep(2)

local apparel = {}
local buttons = #driver.findElementsByXPath('//*[@id="hoard-pagination"]/div/a') + 1

for i = 1, buttons do
	if i ~= 1 then
		driver.findElementsByXPath('//*[@id="hoard-pagination"]/div/a')[i-1].click()
		sleep(2)
	end
	
	for j = 1, #driver.findElementsByXPath('//*[@id="invent"]/span') do
		driver.findElementsByXPath('//*[@id="invent"]/span['..j..']')[1].click()
		sleep(0.8)
		local name = driver.findElementsByXPath('//*[@id="itemprev"]/div[1]/span')[1].text
		if apparel[#apparel] and apparel[#apparel].name == name then
			apparel[#apparel].count = apparel[#apparel].count + 1
			print("Another "..name)
		else
			print(name)
			apparel[#apparel+1] = {name = name, count = 1}
		end
		
		driver.findElementsByXPath('//*[@id="closeprev"]')[1].click()
	end
end

driver.close()

local str = ""
for i, piece in ipairs(apparel) do
	if math.fmod(i, 6) == 1 then
		str = str.."[columns][center][item="..piece.name.."]\n[b]"..piece.count.."[nextcol]"
	elseif math.fmod(i, 6) == 0 or i == #apparel then
		str = str.."[center][item="..piece.name.."]\n[b]"..piece.count.."[/columns]"
	else
		str = str.."[center][item="..piece.name.."]\n[b]"..piece.count.."[nextcol]"
	end
end
print(str)
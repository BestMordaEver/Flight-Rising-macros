local config = dofile("data/packages/config.lua")

print("Expecting input\ndragons={}")
while not dragons do pcall(core.processConsoleInput) end
print("Got input")

local str = ""
for _, id in pairs(dragons) do str = str .. id .. " " end
print(str)

driver = webdriver.create()

for _, id in pairs(dragons) do
	driver.GoToUrl("https://flightrising.com/main.php?dragon="..id)
	
	local data = {
		select(3, driver.findElementsByXPath('//*[@id="super-container"]/div[2]/span')[1].text:find("(%a+)")), -- Name
		id, -- ID
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[2]/div/div[2]')[1].text:find("(%a+)")), -- Breed
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div[4]')[1].text:find("%a+%s%u%l+(%u%l+)")), -- Flight
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div[4]')[1].text:find("%a+%s%a+%s(%a+)")), -- Eyes
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[2]/div/div[2]')[1].text:find("%s(%a+)")), -- Sex
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[1].text:find("%l+(%u%a+)")), -- Primary Color
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[1].text:find("%l+%u%l+%s(%a+)")), -- Primary Gene
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[2].text:find("%l+(%u%a+)")), -- Primary Color
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[2].text:find("%l+%u%l+%s(%a+)")), -- Primary Gene
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[3].text:find("%l+(%u%a+)")), -- Primary Color
		select(3, driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[3].text:find("%l+%u%l+%s(%a+)")) -- Primary Gene
	}
	
	driver.GoToUrl(config.form)
	
	for i=1,12 do
		driver.findElementsByXPath('//*[@id="mG61Hd"]/div/div/div[2]/div['..i..']/div/div[2]/div/div[1]/div/div[1]/input')[1].sendKeys(data[i])
	end
	
	driver.findElementsByXPath('//*[@id="mG61Hd"]/div/div/div[3]/div[1]/div/div/span/span')[1].click()
end

driver.close()
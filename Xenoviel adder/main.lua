local config = dofile("data/packages/config.lua")

local dragons = interface.showPrompt("Enter dragon IDs separated with spaces")

driver = webdriver.create()

for id in dragons:gmatch("%d+") do
	driver.GoToUrl("https://flightrising.com/main.php?dragon="..id)
	
	local data = {
		driver.findElementsByXPath('//*[@id="super-container"]/div[2]/span')[1].text:match("(%a+)"), -- Name
		id, -- ID
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[2]/div/div[2]')[1].text:match("(%a+)"), -- Breed
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div[4]')[1].text:match("%a+%s%u%l+(%u%l+)"), -- Flight
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div[4]')[1].text:match("%a+%s%a+%s(%a+)"), -- Eyes
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[2]/div/div[2]')[1].text:match("%s(%a+)"), -- Sex
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[1].text:match("%l+(%u%a+)"), -- Primary Color
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[1].text:match("%l+%u%l+%s(%a+)"), -- Primary Gene
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[2].text:match("%l+(%u%a+)"), -- Primary Color
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[2].text:match("%l+%u%l+%s(%a+)"), -- Primary Gene
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[3].text:match("%l+(%u%a+)"), -- Primary Color
		driver.findElementsByXPath('//*[@id="newname"]/fieldset/div[2]/span[8]/div/div')[3].text:match("%l+%u%l+%s(%a+)") -- Primary Gene
	}
	
	driver.GoToUrl(config.form)
	for i=1,12 do
		driver.findElementsByXPath('//*[@id="mG61Hd"]/div/div/div[2]/div['..i..']/div/div[2]/div/div[1]/div/div[1]/input')[1].sendKeys(data[i])
	end
	
	driver.findElementsByXPath('//*[@id="mG61Hd"]/div/div/div[3]/div[1]/div/div/span/span')[1].click()
end

driver.close()
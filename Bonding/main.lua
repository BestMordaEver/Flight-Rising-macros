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
print("Logged in")

driver.GoToUrl("http://flightrising.com/main.php?tab=familiar&did="..config.dragon)
local loops = #driver.findElementsByXPath('//a[@class="clue"]')

print("\nFound "..loops.." unused familiars\nYou now can override which familiar will be selected next. \nSet variable 'override' to whichever position you want to skip to ('override = 1' to start anew)\n")

local i, fams = 1, 0
while i ~= loops+1 do
	elems = driver.findElementsByXPath('//a[@class="clue"]')
	sleep(0.5)
	
	elems[i].click()
	sleep(0.5)
	
	driver.GoToUrl("http://flightrising.com/main.php?dragon="..config.dragon)
	sleep(0.5)
	
	local result = pcall(function() 
		driver.findElementsByXPath('//a[@title="Click here to bond with your familiar. You may do this once a day."]')[1].click()
		sleep(0.5)
	end)
	
	local checkOverride = override
	pcall(core.processConsoleInput)
	print(i.." of "..loops, result and "" or "Can't bond with this familiar")
	fams = result and fams + 1 or fams
	
	if checkOverride ~= override then
		print("Detected override, skipping to "..override)
		i = override-1
		override = nil
	end
	
	driver.GoToUrl("http://flightrising.com/main.php?tab=familiar&did="..config.dragon)
	sleep(1)
	
	driver.findElementsByXPath('//*[@id="super-container"]/div[4]/fieldset[2]/div[2]/input')[1].click()
	sleep(2)
	i = i+1
end

driver.findElementsByXPath('//input[@value="Remove Familiar"]')[1].click()

print("Done, bonded with "..fams.." familiars, closing")
driver.close()
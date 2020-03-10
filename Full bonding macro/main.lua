local config = dofile("data/packages/config.lua")

local function sleep (a) 
	local sec = tonumber(os.clock() + a); 
  while (os.clock() < sec) do end 
end

do
	local localPrint = print
	file = assert(io.open("data/packages/log.txt", "w"))
	function print(...)
		localPrint(...)
		file:write(...,"\n")
	end
end

local driver = webdriver.create()
driver.GoToUrl("https://www1.flightrising.com/login")

driver.findElementsByXPath('//*[@id="uname"]')[1].sendKeys(config.login)
driver.findElementsByXPath('//*[@id="pword"]')[1].sendKeys(config.password)
driver.findElementsByXPath('//*[@id="big-login-form-button"]')[1].click()
print("Logged in")

local dragons = tonumber(select(3,driver.findElementsByXPath('//*[@id="usertab"]/span[4]/a')[1].text:find("(%d+)")))
print("Found "..dragons.." dragons\nYou now can override direction and current dragon id.\nDirection is controled using variable 'right'. Set it to true ('right = true') or false ('right = false') to change direction.\nCurrent dragon id can be overriden using variable 'override'. Set it to a dragon ID that you want it to skip to ('override = 12345678').\nYou can skip bonding with active familiars using variable 'skip'. Set it to true ('skip = true') to skip this step.\n")
right, skip, loops = true, false, 1

local fams = 0
driver.GoToUrl("http://flightrising.com/main.php?dragon="..config.dragon)

while true do
	if driver.findElementsByXPath('//img[@src="/images/icons/hibernating.png"]')[1] then
		if right then
			right = false
			print("Reached hibernation from left, going back")
			driver.GoToUrl("http://flightrising.com/main.php?dragon="..config.dragon)
			loops = loops - 1
		else
			print("Reached hibernation from right, bonded with "..loops.." familiars")
			break
		end
	end

	local result = pcall(function()
		print("about to click bonding")
		driver.findElementsByXPath('//a[@title="Click here to bond with your familiar. You may do this once a day."]')[1].click() -- bonding
		sleep(0.5)
		print("clicked bonding, about to dismiss dialogue")
		driver.findElementsByXPath('//button[@class="beigebutton thingbutton"]')[1].click() -- dismiss dialogue
		sleep(0.5)
		print("dismissed dialogue")
	end)
	
	local checkRight = right
	pcall(core.processConsoleInput)
	
	fams = result and fams + 1 or fams
	print(loops.." of "..dragons..", id is "..driver.url:sub(-8), result and "" or "Can't bond this dragon with familiar")
	loops = loops + 1
	
	if checkRight ~= right then print("Detected direction change, current direction is "..(right and "right" or "left")) end
	if skip then print("You selected to skip this bonding step"); break end
	if override then
		print("Detected ID override, skipping to "..override)
		driver.GoToUrl("http://flightrising.com/main.php?dragon="..override)
		override = nil
	else
		print("about to move on to next derg")
		driver.findElementsByXPath(right and '//img[@id="buttonnext"]' or '//img[@id="buttonprev"]')[1].click() -- move onto next derg
		sleep(0.5)
		print("moved on to next derg")
	end
end

print("done with dragons")
driver.GoToUrl("http://flightrising.com/main.php?tab=familiar&did="..config.dragon)
elems = driver.findElementsByXPath('//a[@class="clue"]')

loops = #elems
print("\nFound "..loops.." unused familiars\nYou now can override which familiar will be selected next. \nSet variable 'override' to whichever position you want to skip to ('override = 1' to start anew)\n")

local i = 1
while i ~= loops+1 do
	elems = driver.findElementsByXPath('//a[@class="clue"]')
	print("about to click icon")
	driver.findElementsByXPath('//*[@id="food_bar"]/span[1]/a/img')[1].click()
	print("about to click stashed fam")
	elems[i].click() -- select fam
	sleep(0.5)
	print("clicked stashed fam, about to go to bonding dragon")
	
	driver.GoToUrl("http://flightrising.com/main.php?dragon="..config.dragon)
	sleep(0.5)
	
	local result = pcall(function() 
		print("about to bond with familiar")
		driver.findElementsByXPath('//a[@title="Click here to bond with your familiar. You may do this once a day."]')[1].click() -- bonding
		sleep(0.5)
		print("bonded with familiar")
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
	print("about to remove fam")
	driver.findElementsByXPath('//*[@id="super-container"]/div[4]/fieldset[2]/div[2]/input')[1].click() -- remove fam
	sleep(2)
	print("removed fam")
	i = i+1
end

print("Done, bonded with "..fams.." familiars, closing")
driver.close()
file:close()
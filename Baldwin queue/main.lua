local config = dofile("data/packages/config.lua")
local insert = table.insert

local function sleep (a)
	local sec = tonumber(os.clock() + a);
  while (os.clock() < sec) do end
end

print("Expected input:")
print("transmute food/materials/apparel/familiars/other [amount (1 by default)]/max [item name (first available by default)]/duplicates!")
print("OR")
print("create [amount (1 by default)]/max [item name]!")
print("You can queue commands one after another in one line, transmutations will happen in that exact order")
print("Example: transmute materials 20! transmute other 20! create max Glass Beaker (2)!")

local str = interface.showPrompt("")

local actions = {}
local types = {food = 1, materials = 2, apparel = 3, familiars = 4, other = 5}
do	-- parse
	local lines = {}
	
	for line in str:gmatch("[^!]+") do lines[#lines+1] = line:gsub("^%s*","") end
	
	for i, line in ipairs(lines) do
		local words = {}
		local action = {}
		
		for word in line:gmatch("%S+") do insert(words, word) end
		
		if words[1] == "transmute" then
			action.action = "transmute"
			if types[words[2]] then
				action.type = words[2]
				if words[3] then
					if tonumber(words[3]) or words[3] == "max" then
						action.amount = words[3]
						action.item = line:match("^"..words[1].." "..words[2].." "..words[3].." (.*)$") or "first available"
					elseif words[3] == "duplicates" then
						action.amount = 1
						action.item = "duplicates"
					else
						action.amount = 1
						action.item = line:match("^"..words[1].." "..words[2].." (.*)$")
					end
				else
					action.amount = 1
					action.item = "first available"
				end
			else
				error("In '"..line.."': expected food/materials/apparel/familiars/other, got "..words[2])
			end
		elseif words[1] == "create" then
			action.action = "create"
			if tonumber(words[2]) or words[2] == "max" then
				action.amount = words[2]
				action.item = line:match("^"..words[1].." "..words[2].." (.*)$") or error("In '"..line.."': no item name provided")
			else
				action.amount = 1
				action.item = line:match("^"..words[1].." (.*)$") or error("In '"..line.."': no item name provided")
			end
		else
			error("In '"..line.."': expected transmute or create, got "..words[1])
		end
		
		insert(actions, action)
		print("Action - "..action.action..(action.type and ("\n type - "..action.type) or "").."\n amount - "..(action.amount == -1 and "maximum" or action.amount).."\n item - "..action.item.."\n")
	end
end

local driver = webdriver.create()
driver.GoToUrl("https://www1.flightrising.com/login")

driver.findElementsByXPath('//*[@id="uname"]')[1].sendKeys(config.login)
driver.findElementsByXPath('//*[@id="pword"]')[1].sendKeys(config.password)
driver.findElementsByXPath('//*[@id="big-login-form-button"]')[1].click()
print("Logged in")

for i, action in ipairs(actions) do
	local completed,msg = true,""
	repeat
		completed,msg = pcall(function()
			if action == "transmute" then
				driver.GoToUrl("https://www1.flightrising.com/trading/baldwin/transmute")
				driver.findElementsByXPath('//*[@id="plus-button"]')[1].click()
				sleep(5)
				driver.findElementsByXPath('//*[@id="swaptabs"]/a')[types[action.type]].click()
				sleep(5)
				
			else
				
			end
		end)
		
		if not completed then print("Something went wrong: "..msg.."\nTrying once again!") end
	until completed
end

driver:close()
print("done")
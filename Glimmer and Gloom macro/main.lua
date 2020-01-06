local data = {["000000000"]={},["000000001"]={1,4,6},["000000010"]={4,5},["000000011"]={1,5,6},["000000100"]={1,3,6,7},["000000101"]={3,4,7},["000000110"]={0,2,8,9},["000000111"]={3,5,7},["000001000"]={0,5,8},["000001001"]={2,3,7,9},["000001010"]={0,4,8},["000001011"]={0,1,6,8},["000001100"]={2,4,9},["000001101"]={1,2,6,9},["000001110"]={2,5,9},["000001111"]={0,3,7,8},["000010000"]={0,3,6,7,9},["000010001"]={2,5,6,8},["000010010"]={1,2,8},["000010011"]={2,4,6,8},["000010100"]={0,1,9},["000010101"]={0,4,6,9},["000010110"]={0,1,4,5,9},["000010111"]={0,5,6,9},["000011000"]={0,1,2,4},["000011001"]={0,2,6},["000011010"]={0,1,2,5},["000011011"]={0,2,4,5,6},["000011100"]={1,5,8,9},["000011101"]={0,1,2,3,7},["000011110"]={1,4,8,9},["000011111"]={6,8,9},["000100000"]={0,3,5},["000100001"]={2,7,8,9},["000100010"]={0,3,4},["000100011"]={0,1,3,6},["000100100"]={0,1,5,6,7},["000100101"]={0,4,5,7},["000100110"]={0,1,4,6,7},["000100111"]={0,7},["000101000"]={3,8},["000101001"]={0,2,5,7,9},["000101010"]={3,4,5,8},["000101011"]={0,2,4,7,9},["000101100"]={1,6,7,8},["000101101"]={4,7,8},["000101110"]={0,2,3,9},["000101111"]={5,7,8},["000110000"]={5,6,7,9},["000110001"]={0,2,3,6,8},["000110010"]={4,6,7,9},["000110011"]={1,7,9},["000110100"]={1,3,5,9},["000110101"]={0,1,2,7,8},["000110110"]={1,3,4,9},["000110111"]={3,6,9},["000111000"]={0,6,7,8,9},["000111001"]={2,3,5,6},["000111010"]={1,2,3},["000111011"]={2,3,4,6},["000111100"]={0,1,3,8,9},["000111101"]={1,2,5,7},["000111110"]={2,6,7},["000111111"]={1,2,4,7},["001000000"]={1,2,6,8},["001000001"]={2,4,8},["001000010"]={0,3,7,9},["001000011"]={2,5,8},["001000100"]={2,3,7,8},["001000101"]={0,5,9},["001000110"]={0,1,6,9},["001000111"]={0,4,9},["001001000"]={0,1,2,5,6},["001001001"]={0,2,4,5},["001001010"]={0,1,2,4,6},["001001011"]={0,2},["001001100"]={0,2,3,5,7},["001001101"]={8,9},["001001110"]={0,2,3,4,7},["001001111"]={4,5,8,9},["001010000"]={4,5,6},["001010001"]={1,5},["001010010"]={6},["001010011"]={1,4},["001010100"]={0,2,6,8,9},["001010101"]={3,5,6,7},["001010110"]={1,3,7},["001010111"]={3,4,6,7},["001011000"]={0,4,6,8},["001011001"]={0,1,8},["001011010"]={0,5,6,8},["001011011"]={0,1,4,5,8},["001011100"]={2,5,6,9},["001011101"]={0,3,6,7,8},["001011110"]={2,4,6,9},["001011111"]={1,2,9},["001100000"]={4,7,9},["001100001"]={1,6,7,9},["001100010"]={5,7,9},["001100011"]={0,2,3,8},["001100100"]={0,2,5,7,8},["001100101"]={3,9},["001100110"]={0,2,4,7,8},["001100111"]={3,4,5,9},["001101000"]={1,2,3,6},["001101001"]={2,3,4},["001101010"]={0,7,8,9},["001101011"]={2,3,5},["001101100"]={2,7},["001101101"]={0,3,5,8,9},["001101110"]={2,4,5,7},["001101111"]={0,3,4,8,9},["001110000"]={0,3,4,6},["001110001"]={0,1,3},["001110010"]={0,3,5,6},["001110011"]={0,1,3,4,5},["001110100"]={0,1,4,7},["001110101"]={0,6,7},["001110110"]={0,1,5,7},["001110111"]={0,4,5,6,7},["001111000"]={0,1,2,7,9},["001111001"]={1,3,5,8},["001111010"]={3,6,8},["001111011"]={1,3,4,8},["001111100"]={0,2,3,6,9},["001111101"]={5,6,7,8},["001111110"]={1,7,8},["001111111"]={4,6,7,8},["010000000"]={0,9},["010000001"]={0,1,4,6,9},["010000010"]={0,4,5,9},["010000011"]={0,1,5,6,9},["010000100"]={2,4,5,8},["010000101"]={0,3,4,7,9},["010000110"]={2,8},["010000111"]={0,3,5,7,9},["010001000"]={5,8,9},["010001001"]={0,2,3,7},["010001010"]={4,8,9},["010001011"]={1,6,8,9},["010001100"]={0,2,4},["010001101"]={0,1,2,6},["010001110"]={0,2,5},["010001111"]={3,7,8,9},["010010000"]={3,6,7},["010010001"]={1,3,4,7},["010010010"]={0,1,2,8,9},["010010011"]={1,3,5,7},["010010100"]={1},["010010101"]={4,6},["010010110"]={1,4,5},["010010111"]={5,6},["010011000"]={1,2,4,9},["010011001"]={2,6,9},["010011010"]={1,2,5,9},["010011011"]={0,1,3,7,8},["010011100"]={0,1,5,8},["010011101"]={0,4,5,6,8},["010011110"]={0,1,4,8},["010011111"]={0,6,8},["010100000"]={3,5,9},["010100001"]={0,2,7,8},["010100010"]={3,4,9},["010100011"]={1,3,6,9},["010100100"]={0,2,3,4,8},["010100101"]={4,5,7,9},["010100110"]={0,2,3,5,8},["010100111"]={7,9},["010101000"]={0,3,8,9},["010101001"]={2,5,7},["010101010"]={1,2,6,7},["010101011"]={2,4,7},["010101100"]={2,3,4,5},["010101101"]={0,4,7,8,9},["010101110"]={2,3},["010101111"]={0,5,7,8,9},["010110000"]={0,5,6,7},["010110001"]={0,1,4,5,7},["010110010"]={0,4,6,7},["010110011"]={0,1,7},["010110100"]={0,1,3,5},["010110101"]={0,3,4,5,6},["010110110"]={0,1,3,4},["010110111"]={0,3,6},["010111000"]={6,7,8},["010111001"]={1,4,7,8},["010111010"]={0,1,2,3,9},["010111011"]={1,5,7,8},["010111100"]={1,3,8},["010111101"]={3,4,6,8},["010111110"]={0,2,6,7,9},["010111111"]={3,5,6,8},["011000000"]={3,4,5,7},["011000001"]={0,2,4,8,9},["011000010"]={3,7},["011000011"]={0,2,5,8,9},["011000100"]={1,4,5,6},["011000101"]={5},["011000110"]={1,6},["011000111"]={4},["011001000"]={0,3,4,7,8},["011001001"]={2,4,5,9},["011001010"]={0,3,5,7,8},["011001011"]={2,9},["011001100"]={0,1,4,6,8},["011001101"]={0,8},["011001110"]={0,1,5,6,8},["011001111"]={0,4,5,8},["011010000"]={0,4,5,6,9},["011010001"]={0,1,5,9},["011010010"]={0,6,9},["011010011"]={0,1,4,9},["011010100"]={2,6,8},["011010101"]={1,2,4,8},["011010110"]={0,1,3,7,9},["011010111"]={1,2,5,8},["011011000"]={4,6,8,9},["011011001"]={1,8,9},["011011010"]={5,6,8,9},["011011011"]={0,2,3,6,7},["011011100"]={0,2,5,6},["011011101"]={0,1,2,4,5},["011011110"]={0,2,4,6},["011011111"]={0,1,2},["011100000"]={0,4,7},["011100001"]={0,1,6,7},["011100010"]={0,5,7},["011100011"]={2,3,8,9},["011100100"]={0,1,3,4,6},["011100101"]={0,3},["011100110"]={0,1,3,5,6},["011100111"]={0,3,4,5},["011101000"]={4,5,7,8},["011101001"]={0,2,3,4,9},["011101010"]={7,8},["011101011"]={0,2,3,5,9},["011101100"]={0,2,7,9},["011101101"]={3,5,8},["011101110"]={1,3,6,8},["011101111"]={3,4,8},["011110000"]={3,4,6,9},["011110001"]={1,3,9},["011110010"]={3,5,6,9},["011110011"]={0,2,6,7,8},["011110100"]={1,4,7,9},["011110101"]={6,7,9},["011110110"]={1,5,7,9},["011110111"]={0,1,2,3,8},["011111000"]={1,2,7},["011111001"]={2,4,6,7},["011111010"]={0,3,6,8,9},["011111011"]={2,5,6,7},["011111100"]={2,3,6},["011111101"]={1,2,3,4},["011111110"]={0,1,7,8,9},["011111111"]={1,2,3,5},["100000000"]={1,6,9},["100000001"]={4,9},["100000010"]={0,2,3,7,8},["100000011"]={5,9},["100000100"]={3,7,9},["100000101"]={0,2,5,8},["100000110"]={0,1,2,6,8},["100000111"]={0,2,4,8},["100001000"]={2,3,4,7},["100001001"]={0,4,5,8,9},["100001010"]={2,3,5,7},["100001011"]={0,8,9},["100001100"]={1,2,4,6},["100001101"]={2},["100001110"]={1,2,5,6},["100001111"]={2,4,5},["100010000"]={0,1,3,7},["100010001"]={0,3,4,6,7},["100010010"]={2,6,8,9},["100010011"]={0,3,5,6,7},["100010100"]={0,6},["100010101"]={0,1,4},["100010110"]={0,4,5,6},["100010111"]={0,1,5},["100011000"]={0,2,4,6,9},["100011001"]={0,1,2,9},["100011010"]={0,2,5,6,9},["100011011"]={3,6,7,8},["100011100"]={5,6,8},["100011101"]={1,4,5,8},["100011110"]={4,6,8},["100011111"]={1,8},["100100000"]={2,4,7,8},["100100001"]={0,3,4,5,9},["100100010"]={2,5,7,8},["100100011"]={0,3,9},["100100100"]={0,5,7,9},["100100101"]={2,3,8},["100100110"]={0,4,7,9},["100100111"]={0,1,6,7,9},["100101000"]={0,2,4,5,7},["100101001"]={3,4,8,9},["100101010"]={0,2,7},["100101011"]={3,5,8,9},["100101100"]={7,8,9},["100101101"]={0,2,3,5},["100101110"]={0,1,2,3,6},["100101111"]={0,2,3,4},["100110000"]={1,5,7},["100110001"]={4,5,6,7},["100110010"]={1,4,7},["100110011"]={6,7},["100110100"]={3,5,6},["100110101"]={1,3,4,5},["100110110"]={3,4,6},["100110111"]={1,3},["100111000"]={0,1,7,8},["100111001"]={0,4,6,7,8},["100111010"]={2,3,6,9},["100111011"]={0,5,6,7,8},["100111100"]={0,3,6,8},["100111101"]={0,1,3,4,8},["100111110"]={1,2,7,9},["100111111"]={0,1,3,5,8},["101000000"]={2,8,9},["101000001"]={0,3,5,7},["101000010"]={0,1,3,6,7},["101000011"]={0,3,4,7},["101000100"]={0,4,5},["101000101"]={0,1,5,6},["101000110"]={0},["101000111"]={0,1,4,6},["101001000"]={0,2,5,9},["101001001"]={3,7,8},["101001010"]={0,2,4,9},["101001011"]={0,1,2,6,9},["101001100"]={4,8},["101001101"]={1,6,8},["101001110"]={5,8},["101001111"]={0,2,3,7,9},["101010000"]={1,4,5,9},["101010001"]={5,6,9},["101010010"]={1,9},["101010011"]={4,6,9},["101010100"]={0,1,2,8},["101010101"]={0,2,4,6,8},["101010110"]={3,6,7,9},["101010111"]={0,2,5,6,8},["101011000"]={0,1,4,8,9},["101011001"]={0,6,8,9},["101011010"]={0,1,5,8,9},["101011011"]={1,2,3,7},["101011100"]={1,2,5},["101011101"]={2,4,5,6},["101011110"]={1,2,4},["101011111"]={2,6},["101100000"]={1,4,6,7},["101100001"]={7},["101100010"]={1,5,6,7},["101100011"]={4,5,7},["101100100"]={3,4},["101100101"]={1,3,6},["101100110"]={3,5},["101100111"]={0,2,7,8,9},["101101000"]={2,3,9},["101101001"]={0,5,7,8},["101101010"]={0,1,6,7,8},["101101011"]={0,4,7,8},["101101100"]={0,3,4,5,8},["101101101"]={2,4,7,9},["101101110"]={0,3,8},["101101111"]={2,5,7,9},["101110000"]={0,1,3,4,9},["101110001"]={0,3,6,9},["101110010"]={0,1,3,5,9},["101110011"]={1,2,7,8},["101110100"]={0,4,6,7,9},["101110101"]={0,1,7,9},["101110110"]={0,5,6,7,9},["101110111"]={2,3,6,8},["101111000"]={0,2,6,7},["101111001"]={0,1,2,4,7},["101111010"]={1,3,8,9},["101111011"]={0,1,2,5,7},["101111100"]={0,1,2,3},["101111101"]={0,2,3,4,6},["101111110"]={6,7,8,9},["101111111"]={0,2,3,5,6},["110000000"]={0,1,6},["110000001"]={0,4},["110000010"]={0,1,4,5,6},["110000011"]={0,5},["110000100"]={0,3,7},["110000101"]={2,5,8,9},["110000110"]={0,3,4,5,7},["110000111"]={2,4,8,9},["110001000"]={1,5,6,8},["110001001"]={4,5,8},["110001010"]={1,4,6,8},["110001011"]={8},["110001100"]={3,5,7,8},["110001101"]={0,2,9},["110001110"]={3,4,7,8},["110001111"]={0,2,4,5,9},["110010000"]={1,3,7,9},["110010001"]={0,1,2,5,8},["110010010"]={0,2,6,8},["110010011"]={0,1,2,4,8},["110010100"]={6,9},["110010101"]={1,4,9},["110010110"]={4,5,6,9},["110010111"]={1,5,9},["110011000"]={2,4,6},["110011001"]={1,2},["110011010"]={2,5,6},["110011011"]={1,2,4,5},["110011100"]={0,5,6,8,9},["110011101"]={2,3,6,7},["110011110"]={0,4,6,8,9},["110011111"]={0,1,8,9},["110100000"]={1,3,5,6},["110100001"]={3,4,5},["110100010"]={1,3,4,6},["110100011"]={3},["110100100"]={5,7},["110100101"]={0,2,3,8,9},["110100110"]={4,7},["110100111"]={1,6,7},["110101000"]={0,1,3,6,8},["110101001"]={0,3,4,8},["110101010"]={2,7,9},["110101011"]={0,3,5,8},["110101100"]={0,7,8},["110101101"]={2,3,5,9},["110101110"]={0,4,5,7,8},["110101111"]={2,3,4,9},["110110000"]={0,1,5,7,9},["110110001"]={1,2,3,8},["110110010"]={0,1,4,7,9},["110110011"]={0,6,7,9},["110110100"]={0,3,5,6,9},["110110101"]={2,6,7,8},["110110110"]={0,3,4,6,9},["110110111"]={0,1,3,9},["110111000"]={1,7,8,9},["110111001"]={0,1,2,3,5},["110111010"]={0,2,3,6},["110111011"]={0,1,2,3,4},["110111100"]={3,6,8,9},["110111101"]={0,2,5,6,7},["110111110"]={0,1,2,7},["110111111"]={0,2,4,6,7},["111000000"]={0,2,8},["111000001"]={3,5,7,9},["111000010"]={0,2,4,5,8},["111000011"]={3,4,7,9},["111000100"]={4,5,9},["111000101"]={1,5,6,9},["111000110"]={9},["111000111"]={1,4,6,9},["111001000"]={2,5},["111001001"]={0,3,7,8,9},["111001010"]={2,4},["111001011"]={1,2,6},["111001100"]={0,4,8,9},["111001101"]={0,1,6,8,9},["111001110"]={0,5,8,9},["111001111"]={2,3,7},["111010000"]={0,1,4,5},["111010001"]={0,5,6},["111010010"]={0,1},["111010011"]={0,4,6},["111010100"]={1,2,8,9},["111010101"]={0,1,3,5,7},["111010110"]={0,3,6,7},["111010111"]={0,1,3,4,7},["111011000"]={1,4,8},["111011001"]={6,8},["111011010"]={1,5,8},["111011011"]={4,5,6,8},["111011100"]={0,1,2,5,9},["111011101"]={1,3,7,8},["111011110"]={0,1,2,4,9},["111011111"]={0,2,6,9},["111100000"]={2,3,5,8},["111100001"]={0,7,9},["111100010"]={2,3,4,8},["111100011"]={0,4,5,7,9},["111100100"]={0,3,4,9},["111100101"]={0,1,3,6,9},["111100110"]={0,3,5,9},["111100111"]={2,7,8},["111101000"]={0,2,3},["111101001"]={5,7,8,9},["111101010"]={0,2,3,4,5},["111101011"]={4,7,8,9},["111101100"]={0,1,2,6,7},["111101101"]={0,2,4,7},["111101110"]={3,8,9},["111101111"]={0,2,5,7},["111110000"]={1,3,4},["111110001"]={3,6},["111110010"]={1,3,5},["111110011"]={3,4,5,6},["111110100"]={4,6,7},["111110101"]={1,7},["111110110"]={5,6,7},["111110111"]={1,4,5,7},["111111000"]={2,6,7,9},["111111001"]={0,3,5,6,8},["111111010"]={0,1,3,8},["111111011"]={0,3,4,6,8},["111111100"]={1,2,3,9},["111111101"]={0,1,5,7,8},["111111110"]={0,6,7,8},["111111111"]={0,1,4,7,8}}
local points = {{},{},{},{},{},{},{},{},{}}
local function sleep (a)
    local sec = tonumber(os.clock() + a); 
    while (os.clock() < sec) do 
    end 
end

local function printhex(hex, side)
	local str = ""
	for i=1,9 do
		for j=0,math.abs(5-i) do
			str = str.." "
		end
		for j=1,9-math.abs(5-i) do
			str = str .. (hex[i][j][side].light and "1 " or "0 ")
		end
		str = str.."\n"
	end
	print(str)
end

if not io.type(io.open("Data/Packages/Glimmer and Gloom macro/calibration.lua", "r")) then
	print("Click on all corner tiles to calibrate the macro, starting with top left and going clockwise")
	local held,start = false,{}
	while #start < 6 do
		if input.isMouseDown(0) and not held then
			held = true
			local point = input.getCursorPos()
			table.insert(start, {x=point.x,y=point.y})
			print(#start.." - "..start[#start].x.." "..start[#start].y)
		end
		if not input.isMouseDown(0) then
			held = false
		end
	end
	local f = io.open("Data/Packages/Glimmer and Gloom macro/calibration.lua", "w")
	f:write("return {")
	for _,v in pairs(start) do
		f:write("{x=",v.x,",y=",v.y,"},")
	end
	f:write("}")
	f:close()
end
	
local start = loadfile("Data/Packages/Glimmer and Gloom macro/calibration.lua")()
for i=1,5 do
	for j=1,4+i do
		points[i][j] = {x = start[1].x + (start[2].x-start[1].x)/4*(j-1) - (start[1].x-start[6].x)/4*(i-1), y = start[1].y + (start[6].y-start[1].y)/4*(i-1)}
		points[10-i][j] = {x = start[1].x + (start[2].x-start[1].x)/4*(j-1) - (start[1].x-start[6].x)/4*(i-1), y = start[5].y - (start[5].y-start[6].y)/4*(i-1)}
	end
end


local function click (side, r, c)
	points[r][c][side].light = not points[r][c][side].light	-- middle
	points[r][c][side].change = not points[r][c][side].change
	
	pcall(function() points[r][c+1][side].light = not points[r][c+1][side].light end)	-- right
	pcall(function() points[r-1][c][side].light = not points[r-1][c][side].light end)	-- top left and right
	pcall(function() if r > 5 then points[r-1][c+1][side].light = not points[r-1][c+1][side].light else points[r-1][c-1][side].light = not points[r-1][c-1][side].light end end)
	
	pcall(function() points[r][c-1][side].light = not points[r][c-1][side].light end)	-- left
	pcall(function() points[r+1][c][side].light = not points[r+1][c][side].light end)	-- bottom left and right
	pcall(function() if r < 5 then points[r+1][c+1][side].light = not points[r+1][c+1][side].light else points[r+1][c-1][side].light = not points[r+1][c-1][side].light end end)
end

local rowclicks = {
	{{x=1,y=2},{x=2,y=2},{x=3,y=2},{x=4,y=2},{x=5,y=2},{x=6,y=2}},
	{{x=1,y=3},{x=2,y=3},{x=3,y=3},{x=4,y=3},{x=5,y=3},{x=6,y=3},{x=7,y=3}},
	{{x=1,y=4},{x=2,y=4},{x=3,y=4},{x=4,y=4},{x=5,y=4},{x=6,y=4},{x=7,y=4},{x=8,y=4}},
	{{x=1,y=5},{x=2,y=5},{x=3,y=5},{x=4,y=5},{x=5,y=5},{x=6,y=5},{x=7,y=5},{x=8,y=5},{x=9,y=5}},
	{{x=1,y=1},{x=1,y=2},{x=1,y=3},{x=1,y=4},{x=1,y=5}},
	{{x=2,y=1},{x=2,y=2},{x=2,y=3},{x=2,y=4},{x=2,y=5},{x=1,y=6}},
	{{x=3,y=1},{x=3,y=2},{x=3,y=3},{x=3,y=4},{x=3,y=5},{x=2,y=6},{x=1,y=7}},
	{{x=4,y=1},{x=4,y=2},{x=4,y=3},{x=4,y=4},{x=4,y=5},{x=3,y=6},{x=2,y=7},{x=1,y=8}},
	{{x=5,y=1},{x=5,y=2},{x=5,y=3},{x=5,y=4},{x=5,y=5},{x=4,y=6},{x=3,y=7},{x=2,y=8},{x=1,y=9}}
}
rowclicks[0] = {{x=1,y=1},{x=2,y=1},{x=3,y=1},{x=4,y=1},{x=5,y=1}}

local function rows(side, solution)
	for _,line in pairs(solution) do
		for _,v in pairs(rowclicks[line]) do
			click(side,v.y,v.x)
		end
	end
end

for i=1,19 do
	for _,row in pairs(points) do
		for _,cell in pairs(row) do
			cell.d = {light = screen.getPixels(cell.x,cell.y,1,1)[1][1].r > 100 and true or false, change = false}
			cell.l = {light = cell.d.light, change = false}
		end
	end
	
	--printhex(points, "l")

	for i=1,4 do
		for j=1,4+i do
			if points[i][j].d.light then
				click("d",i+1,j+1)
			end
			if not points[i][j].l.light then
				click("l",i+1,j+1)
			end
		end
	end

	for i=5,8 do
		for j=1,13-i do
			if points[i][j].d.light then click("d",i+1,j) end
			if not points[i][j].l.light then click("l",i+1,j) end
		end
	end

	local residueD = (points[9][1].d.light and "1" or "0")..(points[9][2].d.light and "1" or "0")..(points[9][3].d.light and "1" or "0")..
	(points[9][4].d.light and "1" or "0")..(points[9][5].d.light and "1" or "0")..(points[8][6].d.light and "1" or "0")..
	(points[7][7].d.light and "1" or "0")..(points[6][8].d.light and "1" or "0")..(points[5][9].d.light and "1" or "0")
	local residueL = (points[9][1].l.light and "0" or "1")..(points[9][2].l.light and "0" or "1")..(points[9][3].l.light and "0" or "1")..
	(points[9][4].l.light and "0" or "1")..(points[9][5].l.light and "0" or "1")..(points[8][6].l.light and "0" or "1")..
	(points[7][7].l.light and "0" or "1")..(points[6][8].l.light and "0" or "1")..(points[5][9].l.light and "0" or "1")
	
	rows("d",data[residueD])
	rows("l",data[residueL])

	for i=1,4 do
		for j=1,4+i do
			if points[i][j].d.light then
				click("d",i+1,j+1)
			end
			if not points[i][j].l.light then
				click("l",i+1,j+1)
			end
		end
	end

	for i=5,8 do
		for j=1,13-i do
			if points[i][j].d.light then click("d",i+1,j) end
			if not points[i][j].l.light then click("l",i+1,j) end
		end
	end

	local D,L = 0,0
	for _,row in pairs(points) do
		for _,cell in pairs(row) do
			if cell.d.change then D = D + 1 end
			if cell.l.change then L = L + 1 end
		end
	end
	
	for _,row in pairs(points) do
		for _,cell in pairs(row) do
			if input.isKeyDown(VirtualKey.RETURN) then return end
			if D>L then
				if cell.l.change then
					input.setCursorPos(cell.x,cell.y)
					sleep(0.01)
					input.sendMousePress(0)
					sleep(0.3)
				end
			else	
				if cell.d.change then
					input.setCursorPos(cell.x,cell.y)
					sleep(0.01)
					input.sendMousePress(0)
					sleep(0.3)
				end
			end
		end
	end

	sleep(2)
	if D<L then
		input.setCursorPos(points[9][5].x,points[9][5].y)
		sleep(0.05)
		input.sendMousePress(0)
		sleep(1)
	else
		input.setCursorPos(points[9][1].x,points[9][1].y)
		sleep(0.05)
		input.sendMousePress(0)
		sleep(1)
	end
end
while not input.isKeyDown(VirtualKey.ESCAPE) do
	if input.isKeyDown(VirtualKey.SHIFT) then
		input.sendMousePress(0)
	end
end
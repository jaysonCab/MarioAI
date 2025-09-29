-- September 29th, 2025 | Mario NN | Inspired by MarIO Sethbling

function formCreate()
--[[
Opens a configuration box that allows you to toggle some visuals on and off.
Function is called later.
]]
	form = forms.newform(300, 100, "Options Menu")
	checkbox = forms.checkbox(form, "Show Inputs", 10, 10)
	label = forms.label(form, "Not checked", 10, 40)
end

function getMarioPos()
--[[
Grabs the position of mario in memory as well as the screen scroll.
Subtracting the two gives marios position on the current screen while scrolling.
]]
	marioX = memory.read_s16_le(0x94)
	marioY = memory.read_s16_le(0x96)
	
	layer1x = memory.read_s16_le(0x1A);
	layer1y = memory.read_s16_le(0x1C);
	
	screenX = marioX-layer1x
	screenY = marioY-layer1y

	-- print(string.format('Mario Position: x=%d, y=%d', marioX, marioY))
	-- print(string.format('layer position: x=%d, y=%d', layer1x, layer1y))
	-- print(string.format('screen position: x=%d, y=%d', screenX, screenY))
	-- print('')

	return marioX, marioY, screenX, screenY
end

formCreate()
while true do
    if forms.ischecked(checkbox) then
        forms.settext(label, "Displaying Inputs")
	else
        forms.settext(label, "Not Displaying")
    end
	emu.frameadvance()
end
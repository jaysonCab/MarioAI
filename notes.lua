--[[ NOTES ON LUA
Setting variables are the same as python, unless you want to make a local variable you call local beforehand

For Loops:
for i = 1, 60 do
	emu.frameadvance()
end

While Loops:
while true do
	joypad.set({A=true}, 1)
    emu.frameadvance()
	joypad.set({A=False}, 1)
	emu.frameadvance()
end

Functions and Type Cast:
function Nice(x, y)
	print(tonumber(y))
	print(tostring(x))
end
Nice(55.5, "123")

F String Equivalent:
print(string.format("Mario position: x=%d, y=%d", marioX, marioY))

Lists:
myArray = {"apple", "banana", "cherry"}
print(myArray[1]) -- Output: apple
]]

--[[ NOTES ON BIZHAWK
Runs on 2-byte values (16 bits), thats why utilize memory.read_s16_le() function
	s16 means 16 bit signed integer values from -32768 to 32767 to track world coords
	le: little-endian -> Least significant byte first
]]
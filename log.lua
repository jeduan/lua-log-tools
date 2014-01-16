local inspect = require 'vendor.inspect.inspect'
local M = {}
local mt = {}

M.disabled = false

local function _log(options, ...)
	if M.disabled then
		return
	end

	local args = {...}
	local tabs = {}
	local shouldJustPrint = {
		string = true,
		number = true,
		['nil'] = true,
		boolean = true,
}
	for i = 1, #args do
		if shouldJustPrint[type(args[i])] then
			tabs[i] = tostring(args[i])
		else
			tabs[i] = inspect(args[i], options)
		end
	end
	print(table.concat(tabs, '\t'))
end

for i = 1, 5 do
	M['log'..i] = function(...)
		_log({depth = i}, ...)
	end
end

mt.__call = function (t, ...)
	_log({}, ...)
end

mt.__index = M

return setmetatable(M, mt)

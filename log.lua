local inspect = require 'vendor.inspect.inspect'
local M = {}
local mt = {}

M.disabled = false

function M.log(...)
	if M.disabled then
		return
	end

	local args = {...}
	local tabs = {}
	for i = 1, #args do
		tabs[i] = inspect(args[i])
	end
	print(table.concat(tabs, '\t'))
end

mt.__call = function (t, ...)
	M.log(...)
end

mt.__index = M

return setmetatable(M, mt)

local inspect = require 'vendor.inspect.inspect'
local M = {}
local mt = {}

M.disabled = false

function M.log(...)
	if M.disabled then
		return
	end

	inspect(...)
end

mt.__call = function (t, ...)
	M.log(...)
end

mt.__index = M

return setmetatable(M, mt)

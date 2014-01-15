local log = require 'log'

log('foo')
log({'a', foo = 'bar'})
local f = setmetatable({}, {
	foo = 'bar'
})
log(f)

log('foo', {foo = 'bar'})

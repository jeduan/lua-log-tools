local log = require 'log'

log('foo')
log({'a', foo = 'bar'})
local f = setmetatable({}, {
	foo = 'bar'
})
log(f)

log('foo', 2, false, {foo = 'bar'})

log.log1 {foo = {bar = {baz = 'alpha'}}}

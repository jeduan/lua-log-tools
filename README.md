# log-tools

## Installation

Ensure the bower registry is `"https://yogome-bower.herokuapp.com"` and then `bower install log`

## Usage

```lua
local log = require 'vendor.log.log'

log({foo = 'bar'})

--[[ Output
table: 0x0000ffff {
 [foo] => 'bar'
}
--]]

```

You can disable all logging if set `log.disable = true`

```lua
local log = require('vendor.log.log')
log.disable = true
log({foo = 'bar'})

--[[ Output:
--]]
```
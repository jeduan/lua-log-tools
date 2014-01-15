# log-tools

## Installation

Ensure the bower registry is `"https://yogome-bower.herokuapp.com"` and then `bower install log`

## Usage

```lua
local log = require 'vendor.log.log'

log({foo = 'bar'})

--[[ Output
{
 foo = "bar"
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

## Changelog

0.3

Adds functions log.log[1-5] that cap the depth of printing

0.2

Prints a table's metatable.
Prints each element passed to it in tabs, similar to how `print` does it



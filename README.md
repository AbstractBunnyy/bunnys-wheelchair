#
![Info](https://discord.com/channels/848608027254194196/848608027254194199/1234464173170360442)

# qb-wheelchair
this is a simple script that allows you to spawn a wheelchair next to you when the item is used
i simply updated the exports and some other ajustments

# Credits
https://github.com/fishiidev?tab=repositories original Creator of the script

# Preview
https://streamable.com/50cjzj

# item
old qb-core/shared/items.lua
```lua
["wheelchair"] 				     = {["name"] = "wheelchair", 			 	 ["label"] = "wheelchair", 		    ["weight"] = 500, 		["type"] = "item", 		["image"] = "wheelchair.png", 				    ["unique"] = true, 		["useable"] = true, 	["shouldClose"] = true,   ["combinable"] = nil,   ["description"] = "Crip Gang"},
```
new qb-core/shared/items.lua
```lua
    wheelchair                    = { name = 'wheelchair', label = 'wheelchair', weight = 500, type = 'item', image = 'wheelchair.png', unique = true, useable = true, shouldClose = true, combinable = nil, description = 'Crip Gang' },
```
# WheelChair Model
https://github.com/AndreIakko/wheelchair

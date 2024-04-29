#
![png](https://cdn.discordapp.com/attachments/848608027254194199/1234464172956323872/Picsart_24-04-29_07-16-05-452.jpg?ex=6630d3da&is=662f825a&hm=1c93706d431d03c240e0290a3ad0e19a7aa6a92d5ede185b68684e47556868ea&)

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

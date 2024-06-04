#
![png](https://cdn.discordapp.com/attachments/848608027254194199/1234464172956323872/Picsart_24-04-29_07-16-05-452.jpg?ex=665fa11a&is=665e4f9a&hm=69ce15a39eb29b7ba500ab22e5c85da51e69f95d87263c9d03b850f745f0f057&)

# info
- **Exclusive script for QBcore FiveM servers**
- **Customizable options**: Easily change fuel export and spawn model with the new config feature
- **User-friendly interface**: Intuitive controls make it easy for EMS personnel to use
- **Regular updates and improvements**: Stay ahead with continuous enhancements to the script
- **Your support matters**: If you find Bunny's Wheelchair script helpful, consider giving it a star on GitHub!

These updates, including the new config feature, ensure Bunny's Wheelchair script remains versatile and adaptable to your server's needs!

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

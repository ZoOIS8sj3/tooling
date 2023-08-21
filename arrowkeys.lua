local convertFrom = "RightControl" -- which key it will intercept
local convertTo = "LeftControl" -- which key it will return

local old = getrawmetatable(Enum.KeyCode)
setrawmetatable(Enum.KeyCode, {
   __index = function(self, key)
       if key == convertFrom then
           return old.__index(self, convertTo)
       end
       
       return old.__index(self, key)
   end
})

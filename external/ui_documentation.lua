-- cattoware lib documentation

local ui = loadstring(game:HttpGet'https://raw.githubusercontent.com/ao-0/cattoware/main/external/ui.lua')()(nil, "cattoware", nil)
local tab = ui.tab("hax")
tab.button("kill every one in ur match fr", print)
tab.toggle("fly", true, print)
tab.toggle("debounce hax", false, print)
tab.slider("FOV", 20, 10, 100, print)
tab.dropdown("hitpart", "Head", {"Head", "HumanoidRootPart"}, print)
tab.keybind("Kill all keybind", "K", print)

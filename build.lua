
local colors = {
	{"base_1_1", "#24232a"},
	{"base_1_2", "#2e2b31"},
	{"base_1_3", "#3a3539"},
	{"base_2_2", "#6b6264"},
	{"base_3_2", "#beb8b3"},
	{"green_3_2", "#b4c283"},
	{"base_1", "#191a23"},
	{"base_2", "#463f42"},
	{"base_3", "#918686"},
	{"base_4", "#ebebe1"},
	{"beige_2", "#604d5c"},
	{"beige_3", "#bc9c86"},
	{"beige_4", "#eee0c4"},
	{"red_2", "#45324b"},
	{"red_3", "#d65676"},
	{"red_4", "#f9c490"},
	{"green_2", "#2f514c"},
	{"green_3", "#879d70"},
	{"green_4", "#e1e897"},
	{"blue_2", "#243b4e"},
	{"blue_3", "#4d95b1"},
	{"blue_4", "#c6f6ef"},
}

local content
do
	local f = io.open("template-color-theme.json", "r")
	content = f:read("*a")
	f:close()
end

for _, value in ipairs(colors) do
	content = string.gsub(content, "%$"..value[1], value[2])
end

do
	local f = io.open("themes/color-theme.json", "w")
	f:write(content)
	f:close()
end

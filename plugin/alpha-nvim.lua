local coolLines = {
	[[    ███╗   ███╗ █████╗ ██╗  ██╗███████╗   ]],
	[[    ████╗ ████║██╔══██╗██║ ██╔╝██╔════╝   ]],
	[[    ██╔████╔██║███████║█████╔╝ █████╗     ]],
	[[    ██║╚██╔╝██║██╔══██║██╔═██╗ ██╔══╝     ]],
	[[    ██║ ╚═╝ ██║██║  ██║██║  ██╗███████╗   ]],
	[[    ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ]],
	[[      ██████╗ ██████╗  ██████╗ ██╗        ]],
	[[     ██╔════╝██╔═══██╗██╔═══██╗██║        ]],
	[[     ██║     ██║   ██║██║   ██║██║        ]],
	[[     ██║     ██║   ██║██║   ██║██║        ]],
	[[     ╚██████╗╚██████╔╝╚██████╔╝███████╗   ]],
	[[      ╚═════╝ ╚═════╝  ╚═════╝ ╚══════╝   ]],
	[[███████╗████████╗██╗   ██╗███████╗███████╗]],
	[[██╔════╝╚══██╔══╝██║   ██║██╔════╝██╔════╝]],
	[[███████╗   ██║   ██║   ██║█████╗  █████╗  ]],
	[[╚════██║   ██║   ██║   ██║██╔══╝  ██╔══╝  ]],
	[[███████║   ██║   ╚██████╔╝██║     ██║     ]],
	[[╚══════╝   ╚═╝    ╚═════╝ ╚═╝     ╚═╝     ]],
}

local solveLines = {
	[[╔═╗┬┬─┐┌─┐┌┬┐  ┌─┐┌─┐┬ ┬  ┬┌─┐  ┌┬┐┬ ┬┌─┐  ┌─┐┬─┐┌─┐┌┐ ┬  ┌─┐┌┬┐   ]],
	[[╠╣ │├┬┘└─┐ │   └─┐│ ││ └┐┌┘├┤    │ ├─┤├┤   ├─┘├┬┘│ │├┴┐│  ├┤ │││   ]],
	[[╚  ┴┴└─└─┘ ┴┘  └─┘└─┘┴─┘└┘ └─┘   ┴ ┴ ┴└─┘  ┴  ┴└─└─┘└─┘┴─┘└─┘┴ ┴ o ]],
	[[      ╔╦╗┬ ┬┌─┐┌┐┌  ┬ ┬┬─┐┬┌┬┐┌─┐  ┌┬┐┬ ┬┌─┐  ┌─┐┌─┐┌┬┐┌─┐         ]],
	[[       ║ ├─┤├┤ │││  │││├┬┘│ │ ├┤    │ ├─┤├┤   │  │ │ ││├┤          ]],
	[[       ╩ ┴ ┴└─┘┘└┘  └┴┘┴└─┴ ┴ └─┘   ┴ ┴ ┴└─┘  └─┘└─┘─┴┘└─┘         ]],
	[[                                                     - John Johnson]],
}

local bugLines = {
	[[  _____   _                          _                 _                             ]],
	[[ |_   _| | |_    ___   _ _   ___    (_)  ___    __ _  | | __ __ __  __ _   _  _   ___]],
	[[   | |   | ' \  / -_) | '_| / -_)   | | (_-<   / _` | | | \ V  V / / _` | | || | (_-<]],
	[[   |_|   |_||_| \___| |_|   \___|   |_| /__/   \__,_| |_|  \_/\_/  \__,_|  \_, | /__/]],
	[[                                                                           |__/      ]],
	[[                                                   _                                 ]],
	[[  ___   _ _    ___     _ __    ___   _ _   ___    | |__   _  _   ____                ]],
	[[ / _ \ | ' \  / -_)   | '  \  / _ \ | '_| / -_)   | '_ \ | || | / _  |               ]],
	[[ \___/ |_||_| \___|   |_|_|_| \___/ |_|   \___|   |_.__/  \_,_| \__, |               ]],
	[[                                                                |___/                ]],
	[[  _              __   _                                                              ]],
	[[ | |_   ___     / _| (_) __ __                                                       ]],
	[[ |  _| / _ \   |  _| | | \ \ /  _                                                    ]],
	[[  \__| \___/   |_|   |_| /_\_\ (_)                                     - Ellen Ullman]],
}

local processLines = {
	[[╔╦╗╦ ╦╔═╗  ╔═╗╦═╗╔═╗╔═╗╔╦╗╦╦  ╦╔═╗  ╔═╗╦═╗╔═╗╔═╗╔═╗╔═╗╔═╗]],
	[[ ║ ╠═╣║╣   ║  ╠╦╝║╣ ╠═╣ ║ ║╚╗╔╝║╣   ╠═╝╠╦╝║ ║║  ║╣ ╚═╗╚═╗]],
	[[ ╩ ╩ ╩╚═╝  ╚═╝╩╚═╚═╝╩ ╩ ╩ ╩ ╚╝ ╚═╝  ╩  ╩╚═╚═╝╚═╝╚═╝╚═╝╚═╝]],
	[[This is Amazing!]],
	[[This is difficult]],
	[[This is shit]],
	[[I am shit]],
	[[This might be OK]],
	[[This is Amazing!]],
}

local function lineColor(lines, colStart)
	local out = {}
	for i, line in ipairs(lines) do
		local hi = "StartLogo" .. i + colStart
		table.insert(out, { hi = hi, line = line })
	end
	return out
end

local headers = {
	lineColor(coolLines, 5),
	lineColor(solveLines, 13),
	lineColor(bugLines, 9),
	lineColor(processLines, 0),
}

local function header_chars()
	math.randomseed(os.time())
	return headers[math.random(#headers)]
end

-- Map over the headers, setting a different color for each line.
-- This is done by setting the Highligh to StartLogoN, where N is the row index.
-- Define StartLogo1..StartLogoN to get a nice gradient.
local api = vim.api

api.nvim_set_hl(0, "StartLogo0", { fg = "#440154" })
api.nvim_set_hl(0, "StartLogo1", { fg = "#470f62" })
api.nvim_set_hl(0, "StartLogo2", { fg = "#481e70" })
api.nvim_set_hl(0, "StartLogo3", { fg = "#472c7b" })
api.nvim_set_hl(0, "StartLogo4", { fg = "#443982" })
api.nvim_set_hl(0, "StartLogo5", { fg = "#3f4587" })
api.nvim_set_hl(0, "StartLogo6", { fg = "#3a528b" })
api.nvim_set_hl(0, "StartLogo7", { fg = "#355c8c" })
api.nvim_set_hl(0, "StartLogo8", { fg = "#30678d" })
api.nvim_set_hl(0, "StartLogo9", { fg = "#2c728e" })
api.nvim_set_hl(0, "StartLogo10", { fg = "#287b8e" })
api.nvim_set_hl(0, "StartLogo11", { fg = "#24868d" })
api.nvim_set_hl(0, "StartLogo12", { fg = "#20908c" })
api.nvim_set_hl(0, "StartLogo13", { fg = "#1e998a" })
api.nvim_set_hl(0, "StartLogo14", { fg = "#20a485" })
api.nvim_set_hl(0, "StartLogo15", { fg = "#28ae7f" })
api.nvim_set_hl(0, "StartLogo16", { fg = "#35b778" })
api.nvim_set_hl(0, "StartLogo17", { fg = "#47c06e" })
api.nvim_set_hl(0, "StartLogo18", { fg = "#5ec961" })
api.nvim_set_hl(0, "StartLogo19", { fg = "#74d054" })
api.nvim_set_hl(0, "StartLogo20", { fg = "#90d643" })
api.nvim_set_hl(0, "StartLogo21", { fg = "#addc30" })
api.nvim_set_hl(0, "StartLogo22", { fg = "#c7e01f" })
api.nvim_set_hl(0, "StartLogo23", { fg = "#e4e318" })
api.nvim_set_hl(0, "StartLogo24", { fg = "#fde724" })

local function header_color()
	local lines = {}
	for _, lineConfig in pairs(header_chars()) do
		local hi = lineConfig.hi
		local line_chars = lineConfig.line
		local line = {
			type = "text",
			val = line_chars,
			opts = {
				hl = hi,
				shrink_margin = false,
				position = "center",
			},
		}
		table.insert(lines, line)
	end

	local output = {
		type = "group",
		val = lines,
		opts = { position = "center" },
	}

	return output
end

local function configure()
	local theme = require("alpha.themes.theta")
	local themeconfig = theme.config
	local dashboard = require("alpha.themes.dashboard")
	local buttons = {
		type = "group",
		val = {
			{ type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
			{ type = "padding", val = 1 },
			dashboard.button("e", "  New file", "<cmd>ene<CR>"),
			dashboard.button("SPC f", "  Find file"),
			dashboard.button("SPC F", "  Find text"),
			dashboard.button("u", "󱐥  Update plugins", "<cmd>UpdateRemotePlugins<CR>"),
			dashboard.button("t", "  Install language tools", "<cmd>Mason<CR>"),
			dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
		},
		position = "center",
	}

	themeconfig.layout[2] = header_color()
	themeconfig.layout[6] = buttons

	return themeconfig
end

vim.pack.add({
    "https://github.com/goolord/alpha-nvim",
    -- dependencies
    "https://github.com/nvim-tree/nvim-web-devicons"
})

require("alpha").setup(configure())


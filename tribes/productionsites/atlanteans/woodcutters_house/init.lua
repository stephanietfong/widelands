dirname = path.dirname(__file__)

tribes:new_productionsite_type {
   name = "atlanteans_woodcutters_house",
   -- TRANSLATORS: This is a building name used in lists of buildings
   descname = _"Woodcutter’s House",
   size = "small",

   buildcost = {
		log = 2,
		planks = 1
	},
	return_on_dismantle = {
		log = 1,
		planks = 1
	},

	-- TRANSLATORS: Helptext for a building: Woodcutter’s House
   helptext = "", -- NOCOM(GunChleoc): See what we can shift over from help.lua here

   animations = {
		idle = {
			pictures = { dirname .. "idle_\\d+.png" },
			hotspot = { 37, 44 },
		},
	},

   aihints = {
		logproducer = true,
		forced_after = 0
   },

	working_positions = {
		atlanteans_woodcutter = 1
	},

   outputs = {
		"log"
   },

	programs = {
		work = {
			-- TRANSLATORS: Completed/Skipped/Did not start felling trees because ...
			descname = _"felling trees",
			actions = {
				"sleep=30000", -- Barbarian lumberjack sleeps 25000
				"worker=harvest"
			}
		},
	},
	out_of_resource_notification = {
		title = _"Out of Trees",
		message = _"The woodcutter working at this woodcutter’s house can’t find any trees in his working radius. You should consider dismantling or destroying the building or building a forester’s house.",
		delay_attempts = 60
	},
}

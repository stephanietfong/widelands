push_textdomain("tribes")

local dirname = path.dirname (__file__)

wl.Descriptions():new_immovable_type {
   name = "frisians_shipconstruction",
   -- TRANSLATORS: This is an immovable name used in lists of immovables
   descname = pgettext("immovable", "Ship Under Construction"),
   animation_directory = dirname,
   icon = dirname .. "menu.png",
   size = "small",
   programs = {
      main = {
         "construct=idle duration:5s decay_after:3m30s",
         "transform=bob:frisians_ship",
      }
   },
   buildcost = {
      log = 9,
      clay = 2,
      cloth = 5
   },
   spritesheets = {
      idle = {
         basename = "build",
         hotspot = {75, 141},
         frames = 6,
         columns = 3,
         rows = 2,
         fps = 1,
         representative_frame = 3
      },
   }
}

pop_textdomain()

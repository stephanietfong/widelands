-- The Barbarian Iron Ore Mine

include "scripting/formatting.lua"
include "scripting/format_help.lua"

set_textdomain("tribe_barbarians")

return {
   func = function(building_description)
	return

	--Lore Section
	building_help_lore_string("barbarians", building_description, _[[‘I look at my own pick wearing away day by day and I realize why my work is important.’]], _[[Quote from an anonymous miner.]]) ..

	--General Section
	building_help_general_string("barbarians", building_description, "ironore",
		_"Digs iron ore out of the ground in mountain terrain.",
		_"This mine exploits only %s of the resource. From there on out, it will only have a 5%% chance of finding any iron ore.":bformat("1/3")) ..

	--Dependencies
	building_help_dependencies_production("barbarians", building_description) ..

	--Workers Section
	building_help_crew_string("barbarians", building_description) ..

	--Building Section
	building_help_building_section("barbarians", building_description) ..

	--Production Section
	building_help_production_section(_"If the food supply is steady, this mine can produce iron ore in %s on average.":bformat(
		ngettext("%d second", "%d seconds", 65):bformat(65)
	))
  end
}

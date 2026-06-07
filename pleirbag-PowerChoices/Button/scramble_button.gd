extends OptionButton

const PowerChoicesConfig = preload("res://mods-unpacked/pleirbag-PowerChoices/scripts/chosen.gd")
const PowerChoices = preload("res://mods-unpacked/pleirbag-PowerChoices/extensions/Scripts/Maps/power_spot_extends.gd")
const PowerSpot = preload("res://Scripts/Maps/power_spot.gd")

func _ready():
    self.item_selected.connect(_on_item_selected)

func _on_item_selected(index: int):
    if index == 1:
        #print("sizes 1 ", PowerSpot.SPECIAL_POOL.size(), '\n', PowerSpot.SPECIAL_POOL.size())
        PowerChoices.clear_pools()
        #print("sizes 2 ", PowerSpot.SPECIAL_POOL.size(), '\n', PowerSpot.SPECIAL_POOL.size())
        PowerChoicesConfig.scramble_mode = true
    else:
        #print("sizes ELSE 1 ", PowerSpot.POWER_POOL.size(), '\n', PowerSpot.SPECIAL_POOL.size())
        PowerChoices.clear_pools()
        #print("sizes ELSE 2 ", PowerSpot.POWER_POOL.size(), '\n', PowerSpot.SPECIAL_POOL.size())
        PowerChoicesConfig.scramble_mode = false

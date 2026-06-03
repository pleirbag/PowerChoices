extends OptionButton

const PowerChoicesConfig = preload("res://mods-unpacked/pleirbag-PowerChoices/scripts/chosen.gd")

func _ready():
    self.item_selected.connect(_on_item_selected)

func _on_item_selected(index: int):
    if index == 1:
        PowerChoicesConfig.scramble_mode = true
    else:
        PowerChoicesConfig.scramble_mode = false

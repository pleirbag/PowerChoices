extends Control

const PowerChoicesConfig = preload("res://mods-unpacked/pleirbag-PowerChoices/scripts/chosen.gd")
var panel: PanelContainer
var dropdown_button: Button
var item_list: VBoxContainer
var SPECIAL = ["VOID", "BLOOD", "SUN", "GUN"]
var POWER = ["LIFE", "FIRE", "ROCK", "WATER", "VINE", "ICE", "LIGHT", "POISON", "ELECTRIC"]
var items = ["LIFE", "FIRE", "ROCK", "WATER", "VINE", "ICE", "LIGHT", "VOID", "BLOOD", "SUN", "POISON", "ELECTRIC", "GUN"]

func _ready():
    dropdown_button = Button.new()
    dropdown_button.add_theme_font_size_override("font_size", 32)
    dropdown_button.position.x += 5
    dropdown_button.position.y += 7
    dropdown_button.text = "Select powers to Spawn on the map"
    dropdown_button.connect("pressed", Callable(self, "_on_dropdown_button_pressed"))
    add_child(dropdown_button)

    item_list = VBoxContainer.new()
    item_list.visible = true
    item_list.top_level = true
    
    panel = PanelContainer.new()
    panel.top_level = true
    panel.visible = false
    add_child(panel)

    var style = StyleBoxFlat.new()
    style.bg_color = Color(0.0, 0.0, 0.0, 1.0)

    
    panel.add_theme_stylebox_override("panel", style)
    panel.add_child(item_list)

    for item in items:
        var checkbox = CheckBox.new()
        checkbox.add_theme_font_size_override("font_size", 20)
        checkbox.text = item
        checkbox.button_pressed = true
        checkbox.toggled.connect(func(enabled):PowerChoicesConfig.enabled_powers[item] = enabled)
        PowerChoicesConfig.enabled_powers[item] = true
        item_list.add_child(checkbox)
    panel.custom_minimum_size = item_list.get_combined_minimum_size()
    await get_tree().process_frame

func _on_dropdown_button_pressed():
    panel.visible = !panel.visible
    panel.position = dropdown_button.global_position + Vector2(0, dropdown_button.size.y)
    item_list.global_position = dropdown_button.global_position + Vector2(0, dropdown_button.size.y)
    
    
    
    

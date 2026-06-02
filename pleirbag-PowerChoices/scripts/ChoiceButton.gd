extends Node

var created := false
func _process(_delta):
    
    
    await get_tree().process_frame
    var lobby_menu = get_tree().root.find_child("LobbyMenu", true, false)
    if lobby_menu && created == false:
        var ChoiceButton = preload("res://mods-unpacked/pleirbag-PowerChoices/Button/ChoiceButton.tscn")
        var TargetMenu = lobby_menu.get_node("VBoxContainer/HBoxContainer2/VBoxContainer")
        if TargetMenu == null:
            return
        var ChoiceButton_instance = ChoiceButton.instantiate()

        TargetMenu.add_child(ChoiceButton_instance)
        TargetMenu.move_child(ChoiceButton_instance, 1)
        created = true
        return 
    return
    

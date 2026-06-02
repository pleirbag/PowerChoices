extends Node


const PLEIRBAG_POWERCHOICES_DIR := "pleirbag-PowerChoices"
const PLEIRBAG_POWERCHOICES_LOG_NAME := "pleirbag-PowerChoices:Main"

var selected
var mod_dir_path := ""
var extensions_dir_path := ""
var translations_dir_path := ""
var created := false

#func fill_pool_extend(chain: ModLoaderHookChain, special: bool = false);

func _init() -> void:
    mod_dir_path = ModLoaderMod.get_unpacked_dir().path_join(PLEIRBAG_POWERCHOICES_DIR)
    ModLoaderMod.install_script_extension("res://mods-unpacked/pleirbag-PowerChoices/extensions/Scripts/Maps/power_spot_extends.gd")
  #("res://mods-unpacked/pleirbag-PowerChoices/extensions/Scripts/Maps/power_spot_extends.gd")
    # Add translations
    add_translations()

func install_script_extensions() -> void:
    extensions_dir_path = mod_dir_path.path_join("extensions")
    # ModLoaderMod.install_script_extension(extensions_dir_path.path_join(...))


func add_translations() -> void:
    translations_dir_path = mod_dir_path.path_join("translations")
    # ModLoaderMod.add_translation(translations_dir_path.path_join(...))


func _ready() -> void:
    ModLoaderLog.info("Why are you reading this, its ready anyway", PLEIRBAG_POWERCHOICES_LOG_NAME)
    var injector_script = preload("res://mods-unpacked/pleirbag-PowerChoices/scripts/ChoiceButton.gd")
    var button = injector_script.new()
    add_child(button)
    created = true

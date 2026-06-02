extends "res://Scripts/Maps/power_spot.gd"

const PowerChoicesConfig = preload("res://mods-unpacked/pleirbag-PowerChoices/scripts/chosen.gd")

func fill_pool(special: bool = false):
    var spec: bool = false
    var powr: bool = false
    if special:
        if PowerChoicesConfig.enabled_powers["VOID"]:
            SPECIAL_POOL.append(ELEMENT.VOID)
            spec = true
        if PowerChoicesConfig.enabled_powers["BLOOD"]:
            spec = true
            SPECIAL_POOL.append(ELEMENT.BLOOD)
        if PowerChoicesConfig.enabled_powers["SUN"]:
            spec = true
            SPECIAL_POOL.append(ELEMENT.SUN)
        if PowerChoicesConfig.enabled_powers["GUN"]:
            spec = true
            SPECIAL_POOL.append(ELEMENT.GUN)
    else:
        if PowerChoicesConfig.enabled_powers["LIFE"]:
            powr = true
            POWER_POOL.append(ELEMENT.LIFE)
        if PowerChoicesConfig.enabled_powers["FIRE"]:
            powr = true
            POWER_POOL.append(ELEMENT.FIRE)
        if PowerChoicesConfig.enabled_powers["ROCK"]:
            powr = true
            POWER_POOL.append(ELEMENT.ROCK)
        if PowerChoicesConfig.enabled_powers["WATER"]:
            powr = true
            POWER_POOL.append(ELEMENT.WATER)
        if PowerChoicesConfig.enabled_powers["VINE"]:
            powr = true
            POWER_POOL.append(ELEMENT.VINE)
        if PowerChoicesConfig.enabled_powers["ICE"]:
            powr = true
            POWER_POOL.append(ELEMENT.ICE)
        if PowerChoicesConfig.enabled_powers["LIGHT"]:
            powr = true
            POWER_POOL.append(ELEMENT.LIGHT)
        if PowerChoicesConfig.enabled_powers["POISON"]:
            powr = true
            POWER_POOL.append(ELEMENT.POISON)
        if PowerChoicesConfig.enabled_powers["ELECTRIC"]:
            powr = true
            POWER_POOL.append(ELEMENT.ELECTRIC)
    if !pow && !special:
        print("\n\n\n\n made it into the tree of life")
        POWER_POOL.append(ELEMENT.LIFE)
    if (!spec || SPECIAL_POOL.is_empty()) && special:
        print("\n\n\n\n made it into the void of ass")
        SPECIAL_POOL.append(ELEMENT.VOID)
    print("\n\n\n ELEMS:")
    for i in POWER_POOL:
        print(i, ELEMENT.keys()[i], '\n')
    for i in SPECIAL_POOL:
        print(i, ELEMENT.keys()[i], '\n')
    
"""func fill_pool(special: bool = false):
    if special:
        SPECIAL_POOL = [
            ELEMENT.VOID,
            ELEMENT.BLOOD,
            ELEMENT.SUN,
            ELEMENT.GUN
        ]
    else:
        POWER_POOL = [
            ELEMENT.LIFE,
            ELEMENT.FIRE,
            ELEMENT.ROCK,
            ELEMENT.WATER,
            ELEMENT.VINE,
            ELEMENT.ICE,
            ELEMENT.LIGHT,
            ELEMENT.POISON,
            ELEMENT.ELECTRIC
        ]"""

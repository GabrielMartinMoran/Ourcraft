ENCHANTMENTS = [
    "mending",
    "soul_speed",
    "protection",
    "fire_protection",
    "feather_falling",
    "blast_protection",
    "projectile_protection",
    "respiration",
    "aqua_affinity",
    "thorns",
    "depth_strider",
    "sharpness",
    "smite",
    "bane_of_arthropods",
    "knockback",
    "fire_aspect",
    "looting",
    "efficiency",
    "silk_touch",
    "unbreaking",
    "fortune",
    "power",
    "punch",
    "flame",
    "infinity",
    "luck_of_the_sea",
    "lure",
    "channeling",
    "binding_curse",
    "vanishing_curse",
    "frost_walker",
    "impaling",
    "loyalty",
    "multishot",
    "piercing",
    "quick_charge",
    "riptide",
    "sweeping"
]

for i, x in enumerate(ENCHANTMENTS):
    print("execute at @p if score Server lotteryRndmValue matches " + str(i) + " run summon minecraft:item ~ ~ ~ {Item:{id:\"minecraft:enchanted_book\",Count:1b,tag:{StoredEnchantments:[{id:\"" + x + "\",lvl:1}]}}}")
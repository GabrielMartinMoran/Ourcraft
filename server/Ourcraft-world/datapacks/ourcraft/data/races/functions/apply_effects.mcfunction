# Funcion que se ejecuta en cada tick

#function ourcraft:races/apply_effects
#tellraw @a {"text": "Aplicando efectos", "color": "green"}
#execute as MrKupo say "Hola"
#give @p minecraft:structure_void{AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-10d,Operation:0,UUIDLeast:111113,UUIDMost:1111,Slot:"head"}]}

# Test team



# Videntes -> Vision nocturna
effect give @a[team=videntes] minecraft:night_vision 999999 0 true
effect give @a[team=videntes] minecraft:slowness 999999 0 true
replaceitem entity @a[team=videntes] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1

# Acuaticos
effect give @a[team=acuaticos] minecraft:dolphins_grace 999999 0 true
effect give @a[team=acuaticos] minecraft:conduit_power 999999 0 true
replaceitem entity @a[team=acuaticos] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-4,Operation:0,UUIDLeast:6826484,UUIDMost:-3523282}]} 1

# Osados
effect give @a[team=osados] minecraft:strength 999999 1 true
replaceitem entity @a[team=osados] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-10,Operation:0,UUIDLeast:6826484,UUIDMost:-3523282}]} 1

# Guardianes
replaceitem entity @a[team=guardianes] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:20,Operation:0,UUIDLeast:6826484,UUIDMost:-3523282}]} 1
effect give @a[team=guardianes] minecraft:mining_fatigue 999999 1 true

# Corredores
effect give @a[team=corredores] minecraft:speed 999999 0 true
effect give @a[team=corredores] minecraft:hunger 999999 0 true
replaceitem entity @a[team=corredores] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1

# Osados
effect give @a[team=maestros] minecraft:night_vision 999999 0 true
effect give @a[team=maestros] minecraft:strength 999999 0 true
effect give @a[team=maestros] minecraft:speed 999999 0 true
replaceitem entity @a[team=maestros] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-16,Operation:0,UUIDLeast:6826484,UUIDMost:-3523282}]} 1
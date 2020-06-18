# Funcion que se ejecuta en cada tick

#function ourcraft:races/apply_effects
#tellraw @a {"text": "Aplicando efectos", "color": "green"}
#execute as MrKupo say "Hola"
#give @p minecraft:structure_void{AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10d,Operation:0,UUIDLeast:111113,UUIDMost:1111,Slot:"head"}]}

# Test team

# Chequeamos si esta montando un bote
scoreboard players set @a ridingBoat 0
scoreboard players set @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] ridingBoat 1

# Videntes
effect give @a[team=videntes] minecraft:night_vision 999999 0 true
effect give @a[team=videntes] minecraft:weakness 999999 0 true
replaceitem entity @a[team=videntes] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1

# Zora
effect give @a[team=zora] minecraft:conduit_power 999999 0 true
execute at @a[team=zora,scores={ridingBoat=0}] run execute if block ~ ~ ~ minecraft:water run effect give @p[team=zora,scores={ridingBoat=0}] minecraft:speed 1 1 true
execute at @a[team=zora] run execute if block ~ ~ ~ minecraft:air run effect give @p[team=zora] minecraft:slowness 2 0 true
replaceitem entity @a[team=zora] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s},{id:"minecraft:aqua_affinity",lvl:4s},{id:"minecraft:depth_strider",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1

# Dothraki
effect give @a[team=dothraki] minecraft:strength 999999 1 true
effect give @a[team=dothraki] minecraft:hunger 999999 0 true
replaceitem entity @a[team=dothraki] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1

# Guardianes
effect give @a[team=guardianes] minecraft:weakness 999999 1 true
effect give @a[team=guardianes] minecraft:slowness 999999 0 true
replaceitem entity @a[team=guardianes] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:20,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1

# Corredores
effect give @a[team=corredores] minecraft:speed 999999 1 true
effect give @a[team=corredores] minecraft:hunger 999999 0 true
effect give @a[team=corredores] minecraft:weakness 999999 0 true
replaceitem entity @a[team=corredores] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1

# Goron
effect give @a[team=goron] minecraft:fire_resistance 999999 0 true
replaceitem entity @a[team=goron] armor.head minecraft:stone_button{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1
execute at @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~ ~ minecraft:water run effect give @p[team=goron,scores={ridingBoat=0}] minecraft:wither 2 0
execute at @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~1 ~ minecraft:water run effect give @p[team=goron,scores={ridingBoat=0}] minecraft:wither 2 0
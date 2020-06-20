# Funcion que se ejecuta en cada tick

#function ourcraft:races/apply_effects
#tellraw @a {"text": "Aplicando efectos", "color": "green"}
#execute as MrKupo say "Hola"
#give @p minecraft:structure_void{AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10d,Operation:0,UUIDLeast:111113,UUIDMost:1111,Slot:"head"}]}

# Test team

# Chequeamos si esta montando un bote
scoreboard players set @a ridingBoat 0
scoreboard players set @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] ridingBoat 1

# Guardamos la salud en un scoreboard
execute as @a store result score @s health run data get entity @s Health
execute as @a store result score @s maxHealth run attribute @s minecraft:generic.max_health get

scoreboard players set @a needsFullHeal 0

# Videntes
effect give @a[team=videntes] minecraft:night_vision 999999 0 true
effect give @a[team=videntes] minecraft:weakness 999999 0 true
#replaceitem entity @a[team=videntes] armor.head minecraft:respawn_anchor{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1
#execute at @a[team=videntes] run attribute @p[team=videntes] minecraft:generic.max_health base set 16
execute as @a[team=videntes] run attribute @s minecraft:generic.max_health base set 16
# Para que recalcule la salud (si tiene mas que el maximo)
execute as @a[team=videntes,scores={health=17..}] run effect give @s minecraft:instant_health 1 0 true

# Zora
effect give @a[team=zora] minecraft:conduit_power 999999 0 true
effect give @a[team=zora] minecraft:dolphins_grace 999999 0 true
execute as @a[team=zora,scores={ridingBoat=0}] run execute if block ~ ~1 ~ minecraft:water run effect give @s minecraft:speed 1 1 true
execute as @a[team=zora] run execute unless block ~ ~ ~ run effect give @s minecraft:slowness 2 0 true
#execute at @a[team=zora,scores={ridingBoat=0}] run execute if block ~ ~1 ~ minecraft:water run effect give @p[team=zora,scores={ridingBoat=0}] minecraft:speed 1 1 true
#execute at @a[team=zora] run execute unless block ~ ~ ~ minecraft:water run effect give @p[team=zora] minecraft:slowness 2 0 true


#execute at @a[team=zora] run attribute @p[team=zora] minecraft:generic.max_health base set 16
execute as @a[team=zora] run attribute @s minecraft:generic.max_health base set 16
# Para que recalcule la salud (si tiene mas que el maximo)
execute as @a[team=zora,scores={health=17..}] run effect give @s minecraft:instant_health 1 0 true
#replaceitem entity @a[team=zora] armor.head minecraft:sea_lantern{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s},{id:"minecraft:aqua_affinity",lvl:4s},{id:"minecraft:depth_strider",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1

# Dothraki
effect give @a[team=dothraki] minecraft:strength 999999 1 true
effect give @a[team=dothraki] minecraft:hunger 999999 0 true
#execute at @a[team=dothraki] run attribute @p[team=dothraki] minecraft:generic.max_health base set 10
execute as @a[team=dothraki] run attribute @s minecraft:generic.max_health base set 10
# Para que recalcule la salud (si tiene mas que el maximo)
execute as @a[team=dothraki,scores={health=11..}] run effect give @s minecraft:instant_health 1 0 true
#replaceitem entity @a[team=dothraki] armor.head minecraft:observer{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1

# Guardianes
effect give @a[team=guardianes] minecraft:weakness 999999 1 true
effect give @a[team=guardianes] minecraft:slowness 999999 0 true
# Si la salud maxima no es la que corresponde (es decir que recien respawneo) lo marcamos como que necesita cura
execute as @a[team=guardianes,scores={maxHealth=20}] run scoreboard players set @s needsFullHeal 1
#execute at @a[team=guardianes] run attribute @p[team=guardianes] minecraft:generic.max_health base set 40
execute as @a[team=guardianes] run attribute @s minecraft:generic.max_health base set 40
#replaceitem entity @a[team=guardianes] armor.head minecraft:bedrock{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:20,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1

# Corredores
effect give @a[team=corredores] minecraft:speed 999999 1 true
effect give @a[team=corredores] minecraft:hunger 999999 0 true
effect give @a[team=corredores] minecraft:weakness 999999 0 true
#replaceitem entity @a[team=corredores] armor.head minecraft:jack_o_lantern{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-4,Operation:0,UUID:[I; 42853, 1689024593, -201178, -1559272105]}]} 1
#execute at @a[team=corredores] run attribute @p[team=corredores] minecraft:generic.max_health base set 16
execute as @a[team=corredores] run attribute @s minecraft:generic.max_health base set 16
# Para que recalcule la salud (si tiene mas que el maximo)
execute as @a[team=corredores,scores={health=17..}] run effect give @s minecraft:instant_health 1 0 true

# Goron
effect give @a[team=goron] minecraft:fire_resistance 999999 0 true
execute as @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~ ~ minecraft:water run effect give @s minecraft:wither 2 0
execute as @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~1 ~ minecraft:water run effect give @s minecraft:wither 2 0
#execute at @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~ ~ minecraft:water run effect give @p[team=goron,scores={ridingBoat=0}] minecraft:wither 2 0
#execute at @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~1 ~ minecraft:water run effect give @p[team=goron,scores={ridingBoat=0}] minecraft:wither 2 0
execute as @a[team=goron] run attribute @s minecraft:generic.max_health base set 20
#replaceitem entity @a[team=goron] armor.head minecraft:magma_block{Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1


# Curamos a todo el que lo necesite
execute as @a[scores={needsFullHeal=1}] run effect give @s minecraft:regeneration 2 255 true
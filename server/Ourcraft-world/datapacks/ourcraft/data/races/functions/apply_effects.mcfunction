# Funcion que se ejecuta en cada tick

# Test team

# Chequeamos si esta montando un bote
scoreboard players set @a ridingBoat 0
scoreboard players set @a[nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] ridingBoat 1

# Guardamos la salud en un scoreboard
execute as @a store result score @s health run data get entity @s Health
execute as @a store result score @s maxHealth run attribute @s minecraft:generic.max_health get

# Guardamos en un scoreboard si necesita curarse
scoreboard players set @a needsFullHeal 0

# Videntes
effect give @a[team=videntes] minecraft:night_vision 999999 0 true
effect give @a[team=videntes] minecraft:weakness 999999 0 true
execute as @a[team=videntes] run attribute @s minecraft:generic.max_health base set 16
# Para que recalcule la salud (si tiene mas que el maximo)
execute as @a[team=videntes,scores={health=17..}] run effect give @s minecraft:instant_health 1 0 true
# --------

# Zora
effect give @a[team=zora] minecraft:conduit_power 999999 0 true
effect give @a[team=zora] minecraft:dolphins_grace 999999 0 true
execute at @a[team=zora,scores={ridingBoat=0}] run execute if block ~ ~ ~ minecraft:water run effect give @p[team=zora,scores={ridingBoat=0}] minecraft:speed 1 1 true
execute at @a[team=zora] run execute unless block ~ ~ ~ minecraft:water run effect give @p[team=zora] minecraft:slowness 2 0 true
execute as @a[team=zora] run attribute @s minecraft:generic.max_health base set 16
# Para que recalcule la salud (si tiene mas que el maximo)
execute as @a[team=zora,scores={health=17..}] run effect give @s minecraft:instant_health 1 0 true
# --------

# Dothraki
effect give @a[team=dothraki] minecraft:strength 999999 1 true
effect give @a[team=dothraki] minecraft:hunger 999999 0 true
execute as @a[team=dothraki] run attribute @s minecraft:generic.max_health base set 10
# Para que recalcule la salud (si tiene mas que el maximo)
execute as @a[team=dothraki,scores={health=11..}] run effect give @s minecraft:instant_health 1 0 true
# --------

# Guardianes
effect give @a[team=guardianes] minecraft:weakness 999999 1 true
effect give @a[team=guardianes] minecraft:slowness 999999 0 true
# Si la salud maxima no es la que corresponde (es decir que recien respawneo) lo marcamos como que necesita cura
execute as @a[team=guardianes,scores={maxHealth=20}] run scoreboard players set @s needsFullHeal 1
execute as @a[team=guardianes] run attribute @s minecraft:generic.max_health base set 40
# --------

# Corredores
effect give @a[team=corredores] minecraft:speed 999999 1 true
effect give @a[team=corredores] minecraft:hunger 999999 0 true
effect give @a[team=corredores] minecraft:weakness 999999 0 true
execute as @a[team=corredores] run attribute @s minecraft:generic.max_health base set 16
# Para que recalcule la salud (si tiene mas que el maximo)
execute as @a[team=corredores,scores={health=17..}] run effect give @s minecraft:instant_health 1 0 true
# --------

# Goron
effect give @a[team=goron] minecraft:fire_resistance 999999 0 true
# Daño por agua
execute at @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~ ~ minecraft:water run effect give @p[team=goron,scores={ridingBoat=0}] minecraft:wither 2 0
execute at @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~1 ~ minecraft:water run effect give @p[team=goron,scores={ridingBoat=0}] minecraft:wither 2 0
# Cuando el agua tiene burbujas
execute at @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~ ~ minecraft:bubble_column run effect give @p[team=goron,scores={ridingBoat=0}] minecraft:wither 2 0
execute at @a[team=goron,scores={ridingBoat=0}] run execute if block ~ ~1 ~ minecraft:bubble_column run effect give @p[team=goron,scores={ridingBoat=0}] minecraft:wither 2 0

execute as @a[team=goron] run attribute @s minecraft:generic.max_health base set 20
# --------

# Curamos a todo el que lo necesite
execute as @a[scores={needsFullHeal=1}] run effect give @s minecraft:regeneration 2 255 true
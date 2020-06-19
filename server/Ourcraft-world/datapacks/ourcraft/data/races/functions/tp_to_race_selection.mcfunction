# SPAWN COORDS

# TP AL SPAWN
# tp @p 112 73 -821

# UNIRSE A RAZA
# team join RAZA @p

# Teletransporta a todos los jugadores que esten a menos de 128 bloques del spawn y que no
#   tengan team asignado al area de seleccion de raza
tp @a[team=,x=112,y=72,z=-821,distance=..32] 346 250 -1023.9 facing 345 250 -1023.9


# Si ya tiene raza lo cura y lleva al spawn
effect clear @a[team=!,x=327,y=249,z=-1023,distance=..6]
effect give @a[team=!,x=327,y=249,z=-1023,distance=..6] minecraft:instant_health 1 99 true
effect give @a[team=!,x=327,y=249,z=-1023,distance=..6] minecraft:regeneration 5 255
execute at @a[team=!,x=327,y=249,z=-1023,distance=..6] run attribute @p minecraft:generic.max_health base set 20
tp @a[team=!,x=327,y=249,z=-1023,distance=..6] 112 73 -821
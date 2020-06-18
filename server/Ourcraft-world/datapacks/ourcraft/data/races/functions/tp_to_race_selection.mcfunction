# SPAWN COORDS

# TP AL SPAWN
# tp @p 112 73 -821

# UNIRSE A RAZA
# team join RAZA @p

# Teletransporta a todos los jugadores que esten a menos de 128 bloques del spawn y que no
#   tengan team asignado al area de seleccion de raza
tp @a[team=,x=112,y=72,z=-821,distance=..128] 10001.9 250 10019 facing 10001.9 250 10018


# Si ya tiene raza lo cura y lleva al spawn
effect clear @a[team=!,x=10002,y=249,z=10001,distance=..128]
effect give @a[team=!,x=10002,y=249,z=10001,distance=..128] minecraft:instant_health 1 99 true
effect give @a[team=!,x=10002,y=249,z=10001,distance=..128] minecraft:regeneration 5 255
tp @a[team=!,x=10002,y=249,z=10001,distance=..128] 112 73 -821
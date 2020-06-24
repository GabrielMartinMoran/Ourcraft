execute as @e[type=minecraft:villager,name=Villager] run tp @s ~ -512 ~


# Reemplazamos los zombies aldeanos por zombies normales
execute at @e[type=minecraft:zombie_villager] run summon minecraft:zombie
execute as @e[type=minecraft:zombie_villager] run tp @s ~ -512 ~
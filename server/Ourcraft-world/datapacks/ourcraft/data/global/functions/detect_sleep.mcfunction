# Guardamos la hora
execute store result score @a daytime run time query daytime

scoreboard players set @a[scores={awake=1..}] sleeping 0

execute as @a if score @s daytime matches 0 if score @s sleeping matches 1 run effect give @s minecraft:regeneration 3 1
execute as @a if score @s daytime matches 0 if score @s sleeping matches 1 run scoreboard players set @s sleeping 0
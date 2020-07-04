# POCION DE RESISTENCIA AL AGUA
#/give @p minecraft:potion{CustomPotionColor:35062,display:{Name:"\"Potion of Water Resistance\"",Lore:["Water Resistance (3:00)"]}}

# Seteamos en 0 para quienes lo tengan en null
execute as @a unless score @s waterResistTimer matches 0.. run scoreboard players set @s waterResistTimer 0

# Quitamos 1 cada tick
execute as @a[scores={waterResistTimer=1..}] run scoreboard players remove @s waterResistTimer 1

#execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}}] run tag @s add holdsWater

execute as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{display:{Name:'"Potion of Water Resistance"'}}}}] run tag @s add holdsWaterResistancePotion
execute as @a[nbt=!{SelectedItem:{id:"minecraft:potion",tag:{display:{Name:'"Potion of Water Resistance"'}}}},scores={drinkPotion=0}] run tag @s remove holdsWaterResistancePotion

# 20 ticks / seg * 60 segundos * 3 minutos
execute as @a[tag=holdsWaterResistancePotion,scores={drinkPotion=1..}] run scoreboard players set @s waterResistTimer 3600
execute as @a[tag=holdsWaterResistancePotion,scores={drinkPotion=1..}] run scoreboard players set @s drinkPotion 0

# Titulo con la duracion

# Quitamos las coordenadas dependiendo si tomo pocion o no
execute as @a[scores={waterResistTimer=..0}] run scoreboard players set @s ch_toggleConst 1
execute as @a[scores={waterResistTimer=1..}] run scoreboard players set @s ch_toggleConst -1

# Mostramos el efecto de la pocion
execute as @a[scores={waterResistTimer=1..}] run title @s actionbar [{"text":"Water Resistance: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"waterResistTimer"},"color":"dark_aqua"}]

# POCION DE REGRESO A CASA
# SPAWN = 112 72 -821
#/give @p minecraft:potion{CustomPotionColor:8716534,display:{Name:"\"Pocion de regreso a casa\"",Lore:["\"Te teletransporta al spawn point del servidor\""]},CustomPotionType:"\"return_to_home_potion\""}
execute in minecraft:overworld as @a[nbt={SelectedItem:{id:"minecraft:potion",tag:{display:{Name:'"Pocion de regreso a casa"'},CustomPotionType:"\"return_to_home_potion\""}}}] run tag @s add holdsReturnToHomePotion
execute in minecraft:overworld as @a[nbt=!{SelectedItem:{id:"minecraft:potion",tag:{display:{Name:'"Pocion de regreso a casa"'},CustomPotionType:"\"return_to_home_potion\""}}},scores={drinkPotion=0}] run tag @s remove holdsReturnToHomePotion
# Si esta en el overworld
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},tag=holdsReturnToHomePotion,scores={drinkPotion=1..}] run tp @s 112 72 -821
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},tag=holdsReturnToHomePotion,scores={drinkPotion=1..}] at @s run playsound minecraft:item.chorus_fruit.teleport master @s
execute in minecraft:overworld as @a[nbt={Dimension:"minecraft:overworld"},tag=holdsReturnToHomePotion,scores={drinkPotion=1..}] at @s run particle minecraft:dragon_breath ~ ~ ~ 2 2 2 1 1000
# Si no esta en el overworld
execute in minecraft:overworld as @a[nbt=!{Dimension:"minecraft:overworld"},tag=holdsReturnToHomePotion,scores={drinkPotion=1..}] run tellraw @s [{"text":"Ups.. Parece que esta pocion solo funciona en el Overworld","color":"green"}]
execute in minecraft:overworld as @a[tag=holdsReturnToHomePotion,scores={drinkPotion=1..}] run scoreboard players set @s drinkPotion 0
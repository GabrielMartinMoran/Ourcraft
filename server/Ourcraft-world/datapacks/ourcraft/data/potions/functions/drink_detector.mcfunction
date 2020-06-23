# POCION DE RESISTENCIA AL AGUA
#/give @p minecraft:potion{CustomPotionColor:35062,display:{Name:"\"Potion of Water Resistance\"",Lore:["Water Resistance (3:00)"]}}


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
title @a[scores={waterResistTimer=1..}] actionbar [{"text":"Water Resistance: ","color":"dark_aqua"},{"score":{"name":"MrKupo","objective":"waterResistTimer"},"color":"dark_aqua"}]
#title @a[scores={waterResistTimer=1..}] subtitle ["",{"text":"Water Resistance:","color":"blue"},{"score":{"name":"MrKupo","objective":"waterResistTimer"},"color":"blue"}]
#title @a[scores={waterResistTimer=1..}] title ""
# 145 72 -780

# El random de probabilidad llega a 100 y se reinicia
scoreboard players add Server lotteryRndmTimer 1
execute if score Server lotteryRndmTimer >= Server lotteryMaxTicks run scoreboard players set Server lotteryRndmTimer 0

function lottery:calculate_random

# Comentado para desactivarlo
#execute as @e[type=minecraft:item,x=145,y=72,z=-780,distance=..1,limit=1,nbt={Item:{id:"minecraft:gold_ingot"}}] run function lottery:lottery_roll
#execute as @e[type=minecraft:item,x=145,y=72,z=-780,distance=..1,limit=1,nbt={Item:{id:"minecraft:gold_ingot"}}] run kill @s


#tellraw @a [{"text":"Random random timer: ","color":"dark_aqua"},{"score":{"name":"Server","objective":"lotteryRndmValue"},"color":"dark_aqua"}]
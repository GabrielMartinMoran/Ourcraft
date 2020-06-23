#minecraft:dirt 50%
#minecraft:arrow x5 10%
#minecraft:gold_ingot x2 5% OK
#minecraft:leather_boots 5% OK
#minecraft:leather_helmet 5% OK
#minecraft:leather_leggings 4% OK
#minecraft:leather_chestplate 4% OK
#minecraft:wooden_sword 4% OK
#minecraft:wooden_axe 4% OK
#minecraft:golden_apple 3% OK
#minecraft:golden_boots 2% OK
#minecraft:golden_helmet 2% OK
#minecraft:golden_leggings 1% OK
#minecraft:golden_chestplate 1% OK

execute if score Server lotteryRndmValue matches 0..49 run give @p minecraft:dirt 1
execute if score Server lotteryRndmValue matches 50..65 run give @p minecraft:arrow 3
execute if score Server lotteryRndmValue matches 66..75 run give @p minecraft:arrow 5
execute if score Server lotteryRndmValue matches 76..78 run give @p minecraft:gold_ingot 2
execute if score Server lotteryRndmValue matches 79..82 run give @p minecraft:leather_boots 1
execute if score Server lotteryRndmValue matches 83..86 run give @p minecraft:leather_helmet 1
execute if score Server lotteryRndmValue matches 87..88 run give @p minecraft:leather_leggings 1
execute if score Server lotteryRndmValue matches 89..90 run give @p minecraft:leather_chestplate 1
execute if score Server lotteryRndmValue matches 91..92 run give @p minecraft:wooden_sword 1
execute if score Server lotteryRndmValue matches 93..94 run give @p minecraft:wooden_axe 1
execute if score Server lotteryRndmValue matches 95 run give @p minecraft:golden_apple 1
execute if score Server lotteryRndmValue matches 96 run give @p minecraft:golden_boots 1
execute if score Server lotteryRndmValue matches 97 run give @p minecraft:golden_helmet 1
execute if score Server lotteryRndmValue matches 98 run give @p minecraft:golden_leggings 1
execute if score Server lotteryRndmValue matches 99 run give @p minecraft:golden_chestplate 21
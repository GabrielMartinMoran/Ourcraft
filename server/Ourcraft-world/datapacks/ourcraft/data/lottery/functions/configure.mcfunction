scoreboard objectives add lotteryRndmTimer dummy
scoreboard objectives add lotteryLevel dummy
scoreboard objectives add lotteryMaxTicks dummy
scoreboard objectives add lotteryRndmValue dummy

scoreboard players set Server lotteryMaxTicks 50000

tellraw @a [{"text": "Configurando loteria, si es la primera ejecucion por favor ejecute el comando: ", "color": "dark_purple"}, {"text":"/function lottery:first_time_config","color":"green"}]
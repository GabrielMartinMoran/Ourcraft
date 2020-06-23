# Mostramos el score de muertes
#scoreboard objectives setdisplay sidebar deathCounter

# Vamos a utilizar el nombre del jugador Server
scoreboard players add Server scoresTickCount 1


execute if score Server scoresTickCount matches 100.. run scoreboard players add Server scoreToShowIndex 1
execute if score Server scoresTickCount matches 100.. run scoreboard players set Server scoresTickCount 0

# Reiniciamos los indices
execute if score Server scoreToShowIndex matches 3.. run scoreboard players set Server scoreToShowIndex 0

# Trackeo de tiempo
execute as @a run scoreboard players add @s ticksPlayed 1
# Segundos
execute as @a run execute if score @s ticksPlayed matches 20.. run scoreboard players add @s secondsPlayed 1
execute as @a run execute if score @s ticksPlayed matches 20.. run scoreboard players set @s ticksPlayed 0
# Minutos
execute as @a run execute if score @s secondsPlayed matches 60.. run scoreboard players add @s minutesPlayed 1
execute as @a run execute if score @s secondsPlayed matches 60.. run scoreboard players set @s secondsPlayed 0
# Horas
execute as @a run execute if score @s minutesPlayed matches 60.. run scoreboard players add @s hoursPlayed 1
execute as @a run execute if score @s minutesPlayed matches 60.. run scoreboard players set @s minutesPlayed 0


execute if score Server scoreToShowIndex matches 0 run scoreboard objectives setdisplay sidebar deathCounter
execute if score Server scoreToShowIndex matches 1 run scoreboard objectives setdisplay sidebar mobsKillsCounter
execute if score Server scoreToShowIndex matches 2 run scoreboard objectives setdisplay sidebar hoursPlayed
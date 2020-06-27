tellraw @a {"text": "Configurando opciones globales del juego...", "color": "dark_purple"}

# Gamerules
gamerule naturalRegeneration false
gamerule mobGriefing true

# Scoreboards
scoreboard objectives add health dummy
scoreboard objectives add maxHealth dummy

scoreboard objectives add deathCounter deathCount                               "§6     Muertes     "
scoreboard objectives add mobsKillsCounter minecraft.custom:minecraft.mob_kills "§6 Mobs asesinados "


scoreboard objectives add scoresTickCount dummy
scoreboard objectives add scoreToShowIndex dummy


scoreboard objectives add ticksPlayed dummy
scoreboard objectives add secondsPlayed dummy
scoreboard objectives add minutesPlayed dummy
scoreboard objectives add hoursPlayed dummy "§6  Horas jugadas  "


scoreboard objectives add sleeping minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add awake minecraft.custom:minecraft.time_since_rest
scoreboard objectives add daytime dummy

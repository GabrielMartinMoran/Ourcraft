# Requiere la configuracion del server function-permission-level=4

# 5 minutos
execute if score Server ticksUntilShtdwn matches 6000 run tellraw @a [{"text": "[Server]: ", "color": "gold", "bold": true}, {"text":"El server se apagara en 5 minutos...", "color":"green"}]

# 4 minutos
execute if score Server ticksUntilShtdwn matches 4800 run tellraw @a [{"text": "[Server]: ", "color": "gold", "bold": true}, {"text":"El server se apagara en 4 minutos...", "color":"green"}]

# 3 minutos
execute if score Server ticksUntilShtdwn matches 3600 run tellraw @a [{"text": "[Server]: ", "color": "gold", "bold": true}, {"text":"El server se apagara en 3 minutos...", "color":"green"}]

# 2 minutos
execute if score Server ticksUntilShtdwn matches 2400 run tellraw @a [{"text": "[Server]: ", "color": "gold", "bold": true}, {"text":"El server se apagara en 2 minutos...", "color":"green"}]

# 1 minutos
execute if score Server ticksUntilShtdwn matches 1200 run tellraw @a [{"text": "[Server]: ", "color": "gold", "bold": true}, {"text":"El server se apagara en 1 minuto...", "color":"green"}]

# 30 segundos
execute if score Server ticksUntilShtdwn matches 600 run tellraw @a [{"text": "[Server]: ", "color": "gold", "bold": true}, {"text":"El server se apagara en 30 segundos...", "color":"green"}]

# 10 segundos
execute if score Server ticksUntilShtdwn matches 200 run tellraw @a [{"text": "[Server]: ", "color": "gold", "bold": true}, {"text":"El server se apagara en 10 segundos...", "color":"green"}]

# 5 segundos
execute if score Server ticksUntilShtdwn matches 100 run tellraw @a [{"text": "[Server]: ", "color": "gold", "bold": true}, {"text":"El server se apagara en 5 segundos...", "color":"green"}]

# Mensaje deteniendo el server
execute if score Server ticksUntilShtdwn matches 0 run tellraw @a [{"text": "[Server]: ", "color": "gold", "bold": true}, {"text":"Deteniendo el servidor...","color":"green"}]

#Frenar el serve
execute if score Server ticksUntilShtdwn matches 0 run stop

# Descontamos al contador
execute if score Server ticksUntilShtdwn matches 0.. run scoreboard players remove Server ticksUntilShtdwn 1
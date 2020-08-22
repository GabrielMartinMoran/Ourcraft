# HELPERS
# https://minecraft.tools/en/spawn.php

# REINICIO DE SCOREBOARDS
scoreboard players set @a[scores={health=1..}] marauderSpawned 0
# ----------

# El random de probabilidad llega a 100 y se reinicia
scoreboard players add Server spwnTickRandCntr 1
execute if score Server spwnTickRandCntr matches 50000.. run scoreboard players set Server spwnTickRandCntr 0
function custom_mobs:calculate_random

# ================================================================================================================================================

# Merodeador
# Si no esta seteado el scoreboard
execute as @a unless score @s maraudSpawnCount matches 0.. run scoreboard players operation @s maraudSpawnCount = @s deathCounter
execute as @a at @s run execute if score @s deathCounter > @s maraudSpawnCount run function custom_mobs:summon_marauder
execute as @a at @s run execute if score @s deathCounter > @s maraudSpawnCount run scoreboard players operation @s maraudSpawnCount = @s deathCounter

# ================================================================================================================================================

# ZOMBIES
execute as @e[type=minecraft:zombie,name=Zombie,tag=!customSpawnEvaluated,limit=1] run tag @s add toEvaluateCustomSpawn

# 20% -> Haunted
execute as @e[type=minecraft:zombie,name=Zombie,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 0..19 run function custom_mobs:summon_haunted
execute as @e[type=minecraft:zombie,name=Zombie,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..19 run tp @s ~ -512 ~

# 10% -> Hoglin tamer
execute as @e[type=minecraft:zombie,name=Zombie,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 20..29 run function custom_mobs:summon_hoglin_tamer
execute as @e[type=minecraft:zombie,name=Zombie,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 20..29 run tp @s ~ -512 ~

# 10% -> Ciclope
execute as @e[type=minecraft:zombie,name=Zombie,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 30..39 run function custom_mobs:summon_ciclope
execute as @e[type=minecraft:zombie,name=Zombie,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 30..39 run tp @s ~ -512 ~

# 5% -> Heraldo de la muerte
execute as @e[type=minecraft:zombie,name=Zombie,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 40..44 run function custom_mobs:summon_heraldo_muerte
execute as @e[type=minecraft:zombie,name=Zombie,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 40..44 run tp @s ~ -512 ~

# -------------

# HUSKS
execute as @e[type=minecraft:husk,name=Husk,tag=!customSpawnEvaluated,limit=1] run tag @s add toEvaluateCustomSpawn

# 20% -> Haunted
execute as @e[type=minecraft:husk,name=Husk,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 0..19 run function custom_mobs:summon_haunted
execute as @e[type=minecraft:husk,name=Husk,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..19 run tp @s ~ -512 ~

# 10% -> Hoglin tamer
execute as @e[type=minecraft:husk,name=Husk,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 20..29 run function custom_mobs:summon_hoglin_tamer
execute as @e[type=minecraft:husk,name=Husk,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 20..29 run tp @s ~ -512 ~

# 10% -> Ciclope
execute as @e[type=minecraft:husk,name=Husk,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 30..39 run function custom_mobs:summon_ciclope
execute as @e[type=minecraft:husk,name=Husk,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 30..39 run tp @s ~ -512 ~

# 5% -> Heraldo de la muerte
execute as @e[type=minecraft:husk,name=Husk,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 40..44 run function custom_mobs:summon_heraldo_muerte
execute as @e[type=minecraft:husk,name=Husk,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 40..44 run tp @s ~ -512 ~

# -------------

# PHANTOMS
execute as @e[type=minecraft:phantom,name=Phantom,tag=!customSpawnEvaluated,limit=1] run tag @s add toEvaluateCustomSpawn

# 40% -> Phantom rider
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 0..39 run function custom_mobs:summon_phantom_rider
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..39 run tp @s ~ -512 ~

# 10% -> Ghast rider
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 40..49 run function custom_mobs:summon_ghast_rider
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 40..49 run tp @s ~ -512 ~

# 20% -> Fireton
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 50..69 run function custom_mobs:summon_fireton
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 50..69 run tp @s ~ -512 ~

# 1% -> Phankaboom
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 92..96 run function custom_mobs:summon_phankaboom
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 92..96 run tp @s ~ -512 ~

# 1% -> King phantom
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 97..99 run function custom_mobs:summon_king_phantom
execute as @e[type=minecraft:phantom,name=Phantom,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 97..99 run tp @s ~ -512 ~

# -------------

# SKELETONS
execute as @e[type=minecraft:skeleton,name=Skeleton,tag=!customSpawnEvaluated,limit=1] run tag @s add toEvaluateCustomSpawn

# 20% -> Soul reaper
execute as @e[type=minecraft:skeleton,name=Skeleton,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 0..19 run function custom_mobs:summon_soul_reaper
execute as @e[type=minecraft:skeleton,name=Skeleton,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..19 run tp @s ~ -512 ~

# 10% -> Astrowither
execute as @e[type=minecraft:skeleton,name=Skeleton,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 20..29 run function custom_mobs:summon_astrowither
execute as @e[type=minecraft:skeleton,name=Skeleton,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 20..29 run tp @s ~ -512 ~

# 5% -> Herrante
execute as @e[type=minecraft:skeleton,name=Skeleton,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 30..34 run function custom_mobs:summon_herrante
execute as @e[type=minecraft:skeleton,name=Skeleton,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 30..34 run tp @s ~ -512 ~

# 10% -> Wither jockey
execute as @e[type=minecraft:skeleton,name=Skeleton,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 35..44 run function custom_mobs:summon_wither_jockey
execute as @e[type=minecraft:skeleton,name=Skeleton,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 35..44 run tp @s ~ -512 ~

# -------------

# SPIDERS
execute as @e[type=minecraft:spider,name=Spider,tag=!customSpawnEvaluated,limit=1] run tag @s add toEvaluateCustomSpawn

# 20% -> Tracker
execute as @e[type=minecraft:spider,name=Spider,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 0..19 run function custom_mobs:summon_tracker
execute as @e[type=minecraft:spider,name=Spider,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..19 run tp @s ~ -512 ~

# 20% -> Poisoner
execute as @e[type=minecraft:spider,name=Spider,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 20..39 run function custom_mobs:summon_poisoner
execute as @e[type=minecraft:spider,name=Spider,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 20..39 run tp @s ~ -512 ~

# -------------

# SILVERFISH
execute as @e[type=minecraft:silverfish,name=Silverfish,tag=!customSpawnEvaluated,limit=1] run tag @s add toEvaluateCustomSpawn

# 50% -> Silverpain
execute as @e[type=minecraft:silverfish,name=Silverfish,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 0..49 run function custom_mobs:summon_silverpain
execute as @e[type=minecraft:silverfish,name=Silverfish,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..49 run tp @s ~ -512 ~

# -------------

# CREEPER
execute as @e[type=minecraft:creeper,name=Creeper,tag=!customSpawnEvaluated,limit=1] run tag @s add toEvaluateCustomSpawn

# 20% -> Super creeper
execute as @e[type=minecraft:creeper,name=Creeper,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 0..19 run function custom_mobs:summon_super_creeper
execute as @e[type=minecraft:creeper,name=Creeper,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..19 run tp @s ~ -512 ~

# 20% -> Screepy
execute as @e[type=minecraft:creeper,name=Creeper,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 20..39 run function custom_mobs:summon_screepy
execute as @e[type=minecraft:creeper,name=Creeper,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 20..39 run tp @s ~ -512 ~

# 5% -> Nukreeper
execute as @e[type=minecraft:creeper,name=Creeper,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 40..44 run function custom_mobs:summon_nukreeper
execute as @e[type=minecraft:creeper,name=Creeper,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 40..44 run tp @s ~ -512 ~

# -------------

# DOLPHINS
execute as @e[type=minecraft:dolphin,name=Dolphin,tag=!customSpawnEvaluated,limit=1] run tag @s add toEvaluateCustomSpawn

# 20% -> Tracker
execute as @e[type=minecraft:dolphin,name=Dolphin,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 0..19 run function custom_mobs:summon_dead_surfer
execute as @e[type=minecraft:dolphin,name=Dolphin,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..19 run tp @s ~ -512 ~

# -------------


# WITHER BOSS
execute as @e[type=minecraft:wither,name=Wither,tag=!customSpawnEvaluated,limit=1] run tag @s add toEvaluateCustomSpawn

# 100% -> Wither boss
execute as @e[type=minecraft:wither,name=Wither,tag=toEvaluateCustomSpawn] at @s if score Server spwnTickRndValue matches 0..99 run function custom_mobs:summon_wither_boss
execute as @e[type=minecraft:wither,name=Wither,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..99 run tp @s ~ -512 ~
execute as @e[type=minecraft:wither,name=Wither,tag=toEvaluateCustomSpawn] if score Server spwnTickRndValue matches 0..99 run kill @s

# ================================================================================================================================================

# Etiquetamos como ya evaluados los que lo fueron en este tick
execute as @e[tag=toEvaluateCustomSpawn] run tag @s add customSpawnEvaluated
execute as @e[tag=toEvaluateCustomSpawn] run tag @s remove toEvaluateCustomSpawn
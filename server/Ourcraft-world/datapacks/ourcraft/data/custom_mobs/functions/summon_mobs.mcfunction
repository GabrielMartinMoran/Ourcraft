# HELPERS
# https://minecraft.tools/en/spawn.php

# REINICIO DE SCOREBOARDS
scoreboard players set @a[scores={health=1..}] marauderSpawned 0
# ----------

# CONTADORES
execute at @a run execute as @e[type=minecraft:zombie,name=Zombie,tag=!found,distance=24..64] run scoreboard players add @a zombiesSpwnCount 1
execute at @a run execute as @e[type=minecraft:skeleton,name=Skeleton,tag=!found,distance=24..64] run scoreboard players add @a skletonSpwnCount 1
execute at @a run execute as @e[type=minecraft:phantom,name=Phantom,tag=!found,distance=24..64] run scoreboard players add @a phantomSpwnCount 1
execute at @a run execute as @e[type=minecraft:spider,name=Spider,tag=!found,distance=24..64] run scoreboard players add @a spidersSpwnCount 1
execute at @a run execute as @e[type=minecraft:dolphin,name=Dolphin,tag=!found,distance=20..64] run scoreboard players add @a dolphinSpwnCount 1
# ----------

# ETIQUETADOS

# Zombies
execute at @a run tag @e[type=minecraft:zombie,name=Zombie,tag=!found,distance=24..64] add found
execute if entity @a[scores={zombiesSpwnCount=20}] run tag @e[type=minecraft:zombie,name=Zombie,tag=found,limit=1,sort=random] add toTransform

# Skeletons
execute at @a run tag @e[type=minecraft:skeleton,name=Skeleton,tag=!found,distance=24..64] add found
execute if entity @a[scores={skletonSpwnCount=20}] run tag @e[type=minecraft:skeleton,name=Skeleton,tag=found,limit=1,sort=random] add toTransform

# Phantoms
execute at @a run tag @e[type=minecraft:phantom,name=Phantom,tag=!found,distance=24..64] add found
execute if entity @a[scores={phantomSpwnCount=5}] run tag @e[type=minecraft:phantom,name=Phantom,tag=found,limit=1,sort=random] add toTransform

# Spiders
execute at @a run tag @e[type=minecraft:spider,name=Spider,tag=!found,distance=24..64] add found
execute if entity @a[scores={spidersSpwnCount=25}] run tag @e[type=minecraft:spider,name=Spider,tag=found,limit=1,sort=random] add toTransform

# Dolphins
execute at @a run tag @e[type=minecraft:dolphin,name=Dolphin,tag=!found,distance=20..64] add found
execute if entity @a[scores={dolphinSpwnCount=5}] run tag @e[type=minecraft:dolphin,name=Dolphin,tag=found,limit=1,sort=random] add toTransform


# ----------

# SUMMONS
execute at @e[type=minecraft:zombie,name=Zombie,tag=toTransform] run function custom_mobs:summon_haunted 
execute at @e[type=minecraft:skeleton,name=Skeleton,tag=toTransform] run function custom_mobs:summon_soul_reaper 
execute at @e[type=minecraft:phantom,name=Phantom,tag=toTransform] run function custom_mobs:summon_phantom_rider
execute at @e[type=minecraft:spider,name=Spider,tag=toTransform] run function custom_mobs:summon_tracker
execute at @e[type=minecraft:dolphin,name=Dolphin,tag=toTransform] run function custom_mobs:summon_dead_surfer

# Merodeador
execute at @a[scores={health=0,marauderSpawned=0}] run function custom_mobs:summon_marauder
execute as @a[scores={health=0,marauderSpawned=0}] run scoreboard players set @s marauderSpawned 1




# ----------



# DESPAWNS
tp @e[type=minecraft:zombie,name=Zombie,tag=toTransform] ~ -512 ~
tp @e[type=minecraft:skeleton,name=Skeleton,tag=toTransform] ~ -512 ~
tp @e[type=minecraft:phantom,name=Phantom,tag=toTransform] ~ -512 ~
tp @e[type=minecraft:spider,name=Spider,tag=toTransform] ~ -512 ~
tp @e[type=minecraft:dolphin,name=Dolphin,tag=toTransform] ~ -512 ~
# ----------

# REINICIO DE CONTADORES
execute if entity @a[scores={zombiesSpwnCount=20..}] run scoreboard players set @a zombiesSpwnCount 0
execute if entity @a[scores={skletonSpwnCount=20..}] run scoreboard players set @a skletonSpwnCount 0
execute if entity @a[scores={phantomSpwnCount=5..}] run scoreboard players set @a phantomSpwnCount 0
execute if entity @a[scores={spidersSpwnCount=25..}] run scoreboard players set @a spidersSpwnCount 0
execute if entity @a[scores={dolphinSpwnCount=5..}] run scoreboard players set @a dolphinSpwnCount 0
# ----------
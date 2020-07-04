scoreboard players set Server frstPrtlBlksPlcd 1

# Bloques de redstone
execute unless block -752 130 -730 minecraft:redstone_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 132 -730 minecraft:redstone_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 136 -734 minecraft:redstone_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 136 -736 minecraft:redstone_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 132 -740 minecraft:redstone_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 130 -740 minecraft:redstone_block run scoreboard players set Server frstPrtlBlksPlcd 0

# Bloques de oro
execute unless block -752 127 -733 minecraft:gold_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 129 -731 minecraft:gold_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 133 -731 minecraft:gold_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 135 -733 minecraft:gold_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 135 -737 minecraft:gold_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 133 -739 minecraft:gold_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 129 -739 minecraft:gold_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 127 -737 minecraft:gold_block run scoreboard players set Server frstPrtlBlksPlcd 0

# Bloques de diamante
execute unless block -752 128 -732 minecraft:diamond_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 134 -732 minecraft:diamond_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 134 -738 minecraft:diamond_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 128 -738 minecraft:diamond_block run scoreboard players set Server frstPrtlBlksPlcd 0

# Bloques de esmeralda
execute unless block -752 131 -730 minecraft:emerald_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 136 -735 minecraft:emerald_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 131 -740 minecraft:emerald_block run scoreboard players set Server frstPrtlBlksPlcd 0
execute unless block -752 126 -735 minecraft:emerald_block run scoreboard players set Server frstPrtlBlksPlcd 0

execute if score Server frstPortalCmpltd matches 1 run scoreboard players set Server frstPrtlBlksPlcd 0
execute if score Server frstPrtlBlksPlcd matches 1 run scoreboard players set Server frstPortalCmpltd 1
execute if score Server frstPrtlBlksPlcd matches 1 run function first_nether_portal:portal_completed

# Bloques de portal (todo el tiempo por si lo rompen)
execute if score Server frstPortalCmpltd matches 1 run fill -752 134 -734 -752 128 -736 minecraft:nether_portal[axis=z]
execute if score Server frstPortalCmpltd matches 1 run fill -752 133 -733 -752 129 -733 minecraft:nether_portal[axis=z]
execute if score Server frstPortalCmpltd matches 1 run fill -752 132 -732 -752 130 -732 minecraft:nether_portal[axis=z]
execute if score Server frstPortalCmpltd matches 1 run fill -752 133 -737 -752 129 -737 minecraft:nether_portal[axis=z]
execute if score Server frstPortalCmpltd matches 1 run fill -752 132 -738 -752 130 -738 minecraft:nether_portal[axis=z]
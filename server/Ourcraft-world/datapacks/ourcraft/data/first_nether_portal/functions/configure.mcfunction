scoreboard objectives add frstPortalCmpltd dummy
scoreboard objectives add frstPrtlBlksPlcd dummy


execute unless score Server frstPortalCmpltd matches 1 run scoreboard players set Server frstPortalCmpltd 0
execute unless score Server frstPortalCmpltd matches 1 run scoreboard players set Server frstPrtlBlksPlcd 0
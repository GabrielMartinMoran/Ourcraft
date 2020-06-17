#execute if block ~1 ~119 ~2 minecraft:diamond_block run setblock ~1 ~-3 ~2 minecraft:command_block

# Para activar los otros comandos
setblock ~ ~1 ~-3 minecraft:redstone_block replace

# Instanciamos el comando y el boton para hacer rollback a la torre
setblock ~ ~-1 ~ minecraft:command_block{Command:"/function traders:restore_arcane_tower"} replace
setblock ~ ~-1 ~-1 minecraft:stone_button[facing=north] replace


particle minecraft:dragon_breath ~ ~ ~ 2 5 2 5 100

# Prendemos las luces de abajo
setblock ~ ~3 ~3 minecraft:redstone_block replace
setblock ~ ~3 ~-3 minecraft:redstone_block replace
setblock ~3 ~3 ~ minecraft:redstone_block replace
setblock ~-3 ~3 ~ minecraft:redstone_block replace
setblock ~-3 ~3 ~-2 minecraft:redstone_block replace
setblock ~-3 ~3 ~2 minecraft:redstone_block replace
setblock ~3 ~3 ~-2 minecraft:redstone_block replace
setblock ~3 ~3 ~2 minecraft:redstone_block replace
setblock ~2 ~3 ~3 minecraft:redstone_block replace
setblock ~-2 ~3 ~3 minecraft:redstone_block replace
setblock ~2 ~3 ~-3 minecraft:redstone_block replace
setblock ~-2 ~3 ~-3 minecraft:redstone_block replace

# Reemplazamos las vallas por endrods
fill ~-1 ~5 ~-1 ~-1 ~100 ~-1 minecraft:end_rod replace
fill ~1 ~5 ~1 ~1 ~100 ~1 minecraft:end_rod replace
fill ~1 ~5 ~-1 ~1 ~100 ~-1 minecraft:end_rod replace
fill ~-1 ~5 ~1 ~-1 ~100 ~1 minecraft:end_rod replace

# Encendemos las luces de arriba de las endrods
setblock ~-1 ~102 ~-1 minecraft:redstone_block replace
setblock ~1 ~102 ~1 minecraft:redstone_block replace
setblock ~1 ~102 ~-1 minecraft:redstone_block replace
setblock ~-1 ~102 ~1 minecraft:redstone_block replace

# Cambiamos el bloque por el logo del mundo
#setblock ~ ~122 ~ minecraft:player_head[rotation=0]{Owner:{Id:"b8b9dcbc-0cab-4e6d-9102-e278aeeb3358",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQ4MjEwOTJjZTVlNzU1NzQ1MWM3MjNhMDM0MWU5MGI5M2UwNTY0ZTJiMDE0ODFkZTgxZWVhMjcxZjA0YzViNiJ9fX0="}]}}} replace
setblock ~ ~122 ~ minecraft:soul_lantern replace

# Ponemos el vidrio de color en el beacon
setblock ~ ~3 ~ minecraft:light_blue_stained_glass replace

playsound minecraft:ui.toast.challenge_complete master @a[distance=..150] ~ ~122 ~
particle minecraft:dragon_breath ~ ~122 ~ 2 5 2 2 10000
particle minecraft:totem_of_undying ~ ~122 ~ 2 5 2 2 10000

tellraw @a ["",{"selector":"@p","color":"gold"},{"text":" ha activado una torre arcana!","color":"gold"}]
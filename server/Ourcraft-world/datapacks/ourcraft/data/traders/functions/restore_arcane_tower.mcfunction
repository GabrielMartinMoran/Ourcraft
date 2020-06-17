
# Destruimos el command block de arriba
setblock ~ ~1 ~ minecraft:air replace

# Destruimos el command block que disparo la funcion junto con el boton
setblock ~ ~ ~-1 minecraft:air replace
setblock ~ ~ ~ minecraft:air replace

# Quitamos el bloque de redstone para disparar los demas comandos
setblock ~ ~2 ~-3 minecraft:red_wool replace

# Apagamos las luces de abajo
setblock ~ ~4 ~3 minecraft:red_wool replace
setblock ~ ~4 ~-3 minecraft:red_wool replace
setblock ~3 ~4 ~ minecraft:red_wool replace
setblock ~-3 ~4 ~ minecraft:red_wool replace
setblock ~-3 ~4 ~-2 minecraft:red_wool replace
setblock ~-3 ~4 ~2 minecraft:red_wool replace
setblock ~3 ~4 ~-2 minecraft:red_wool replace
setblock ~3 ~4 ~2 minecraft:red_wool replace
setblock ~2 ~4 ~3 minecraft:red_wool replace
setblock ~-2 ~4 ~3 minecraft:red_wool replace
setblock ~2 ~4 ~-3 minecraft:red_wool replace
setblock ~-2 ~4 ~-3 minecraft:red_wool replace

# Restauramos las vallas de acacia
fill ~-1 ~6 ~-1 ~-1 ~101 ~-1 minecraft:acacia_fence replace
fill ~1 ~6 ~1 ~1 ~101 ~1 minecraft:acacia_fence replace
fill ~1 ~6 ~-1 ~1 ~101 ~-1 minecraft:acacia_fence replace
fill ~-1 ~6 ~1 ~-1 ~101 ~1 minecraft:acacia_fence replace

# Apagamos las luces de arriba de las endrods
setblock ~-1 ~103 ~-1 minecraft:red_wool replace
setblock ~1 ~103 ~1 minecraft:red_wool replace
setblock ~1 ~103 ~-1 minecraft:red_wool replace
setblock ~-1 ~103 ~1 minecraft:red_wool replace

# Cambiamos el conduit por aire
setblock ~ ~123 ~ minecraft:air replace

# Ponemos el vidrio negro en el beacon
setblock ~ ~4 ~ minecraft:black_stained_glass replace
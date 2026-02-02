# Detect which type of coral block this is and store it
# 0=tube, 1=brain, 2=bubble, 3=fire, 4=horn
execute if block ~ ~ ~ minecraft:tube_coral_block run scoreboard players set #coral_type coral_spread 0
execute if block ~ ~ ~ minecraft:brain_coral_block run scoreboard players set #coral_type coral_spread 1
execute if block ~ ~ ~ minecraft:bubble_coral_block run scoreboard players set #coral_type coral_spread 2
execute if block ~ ~ ~ minecraft:fire_coral_block run scoreboard players set #coral_type coral_spread 3
execute if block ~ ~ ~ minecraft:horn_coral_block run scoreboard players set #coral_type coral_spread 4

# Found the coral block - now spread coral in 3x3x3 cube around it

# Layer y-1
execute positioned ~-1 ~-1 ~-1 run function coral_spread:try_place
execute positioned ~0 ~-1 ~-1 run function coral_spread:try_place
execute positioned ~1 ~-1 ~-1 run function coral_spread:try_place
execute positioned ~-1 ~-1 ~0 run function coral_spread:try_place
execute positioned ~0 ~-1 ~0 run function coral_spread:try_place
execute positioned ~1 ~-1 ~0 run function coral_spread:try_place
execute positioned ~-1 ~-1 ~1 run function coral_spread:try_place
execute positioned ~0 ~-1 ~1 run function coral_spread:try_place
execute positioned ~1 ~-1 ~1 run function coral_spread:try_place

# Layer y+0 (excluding center which is the coral block itself)
execute positioned ~-1 ~0 ~-1 run function coral_spread:try_place
execute positioned ~0 ~0 ~-1 run function coral_spread:try_place
execute positioned ~1 ~0 ~-1 run function coral_spread:try_place
execute positioned ~-1 ~0 ~0 run function coral_spread:try_place
execute positioned ~1 ~0 ~0 run function coral_spread:try_place
execute positioned ~-1 ~0 ~1 run function coral_spread:try_place
execute positioned ~0 ~0 ~1 run function coral_spread:try_place
execute positioned ~1 ~0 ~1 run function coral_spread:try_place

# Layer y+1
execute positioned ~-1 ~1 ~-1 run function coral_spread:try_place
execute positioned ~0 ~1 ~-1 run function coral_spread:try_place
execute positioned ~1 ~1 ~-1 run function coral_spread:try_place
execute positioned ~-1 ~1 ~0 run function coral_spread:try_place
execute positioned ~0 ~1 ~0 run function coral_spread:try_place
execute positioned ~1 ~1 ~0 run function coral_spread:try_place
execute positioned ~-1 ~1 ~1 run function coral_spread:try_place
execute positioned ~0 ~1 ~1 run function coral_spread:try_place
execute positioned ~1 ~1 ~1 run function coral_spread:try_place

# Clear any seagrass/coral fans from adjacent faces so coral can be bonemealed again
function coral_spread:clear_coral_face

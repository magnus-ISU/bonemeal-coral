# Clear any seagrass/coral fans from the faces of the coral block
# This allows repeated bonemealing without vanilla spawns blocking the face
# For tall seagrass, clear the top block first to prevent particles
execute if block ~1 ~1 ~0 minecraft:tall_seagrass run setblock ~1 ~1 ~0 minecraft:water
execute if block ~-1 ~1 ~0 minecraft:tall_seagrass run setblock ~-1 ~1 ~0 minecraft:water
execute if block ~0 ~2 ~0 minecraft:tall_seagrass run setblock ~0 ~2 ~0 minecraft:water
execute if block ~0 ~0 ~1 minecraft:tall_seagrass if block ~0 ~1 ~1 minecraft:tall_seagrass run setblock ~0 ~1 ~1 minecraft:water
execute if block ~0 ~0 ~-1 minecraft:tall_seagrass if block ~0 ~1 ~-1 minecraft:tall_seagrass run setblock ~0 ~1 ~-1 minecraft:water

# Now clear the main faces
execute if block ~1 ~0 ~0 #coral_spread:coral_replaceable run setblock ~1 ~0 ~0 minecraft:water
execute if block ~-1 ~0 ~0 #coral_spread:coral_replaceable run setblock ~-1 ~0 ~0 minecraft:water
execute if block ~0 ~1 ~0 #coral_spread:coral_replaceable run setblock ~0 ~1 ~0 minecraft:water
execute if block ~0 ~-1 ~0 #coral_spread:coral_replaceable run setblock ~0 ~-1 ~0 minecraft:water
execute if block ~0 ~0 ~1 #coral_spread:coral_replaceable run setblock ~0 ~0 ~1 minecraft:water
execute if block ~0 ~0 ~-1 #coral_spread:coral_replaceable run setblock ~0 ~0 ~-1 minecraft:water

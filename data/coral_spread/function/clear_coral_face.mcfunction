# Clear any seagrass/coral fans from the faces of the coral block
# This allows repeated bonemealing without vanilla spawns blocking the face
# For tall seagrass, clear the top block first to prevent particles
fill ~0 ~2 ~0 ~0 ~1 ~0 minecraft:water replace minecraft:tall_seagrass strict

# Now clear the main faces
fill ~1 ~0 ~0 ~1 ~0 ~0 minecraft:water replace #coral_spread:coral_replaceable strict
fill ~-1 ~0 ~0 ~-1 ~0 ~0 minecraft:water replace #coral_spread:coral_replaceable strict
fill ~0 ~1 ~0 ~0 ~1 ~0 minecraft:water replace #coral_spread:coral_replaceable strict
fill ~0 ~-1 ~0 ~0 ~-1 ~0 minecraft:water replace #coral_spread:coral_replaceable strict
fill ~0 ~0 ~1 ~0 ~0 ~1 minecraft:water replace #coral_spread:coral_replaceable strict
fill ~0 ~0 ~-1 ~0 ~0 ~-1 minecraft:water replace #coral_spread:coral_replaceable strict

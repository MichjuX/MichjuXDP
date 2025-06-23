execute run function dp:savepoint/particles

# DO WPISANIA W COMMANDBLOCKU
# execute if entity @a[distance=..5,scores={saveLoad=1..}] run function dp:savepoint/save

# DO SPAWNPOINTU W MIEJSCU STANIA
# execute if entity @a[distance=..5,scores={save=1}] run execute at @a[distance=..4] run spawnpoint @a[distance=..4] ~ ~ ~

# DO SPAWNPOINTU RELATYWNIE DO COMMANDBLOCKA
# execute if entity @a[distance=..5,scores={save=1}] run spawnpoint @a[distance=..4] ~ ~3 ~
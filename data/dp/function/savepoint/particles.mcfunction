
execute if entity @a[distance=..4, scores={saveLoad=10}] run particle cloud ~ ~ ~ 1 1 1 0 10 normal
execute if entity @a[distance=..4, scores={saveLoad=20}] run particle cherry_leaves ~ ~ ~ 1 1 1 0 10 normal
execute if entity @a[distance=..4, scores={saveLoad=30}] run particle falling_lava ~ ~ ~ 1 1 1 0 10 normal
execute if entity @a[distance=..4, scores={saveLoad=40}] run particle heart ~ ~ ~ 1 1 1 0 100 normal
execute if entity @a[distance=..4, scores={saveLoad=40}] run playsound minecraft:entity.player.levelup player @a[distance=..4] ~ ~ ~ 0.1 1
execute if entity @a[distance=..4, scores={saveLoad=40}] run title @a times 0 10 10
execute if entity @a[distance=..4, scores={saveLoad=40}] run title @a title {"text":"SAVED","bold":true,"color":"green"}
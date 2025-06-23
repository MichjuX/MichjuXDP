# Double jump spell
execute as @a if score @s selectedSpell matches 1 run title @s actionbar {"translate":"dp.spell.double_jump","color":"dark_aqua"}

#CHECK CRITERIA
execute as @a at @s unless block ~ ~-0.5 ~ air run scoreboard players set @s criteria 0
execute as @a at @s if block ~ ~-0.5 ~ air if score @s criteria matches 0 run scoreboard players set @s criteria 1
execute as @a if score @s isSneaking matches 1 if score @s criteria matches 1 run scoreboard players set @s criteria 2

execute as @a if score @s isSneaking matches 1 if score @s criteria matches 2 run scoreboard players set $y player_motion.api.launch 6000
execute as @a if score @s selectedSpell matches 1 if score @s isSneaking matches 1 if score @s criteria matches 2 run function player_motion:api/launch_xyz
execute at @s if score @s isSneaking matches 1 if score @s criteria matches 2 run playsound minecraft:entity.fox.spit player @s ~ ~ ~ 1 1
execute at @s if score @s isSneaking matches 1 if score @s criteria matches 2 run particle minecraft:firework ~ ~ ~ 0.1 0 0.1 0 100 normal
# execute as @a unless score @s sneakTimer matches ..2 run effect clear @s minecraft:levitation
execute as @a if score @s criteria matches 2..3 run scoreboard players add @s criteria 1
# execute as @a if score @s criteria matches 2..3 run scoreboard players add @s criteria 1
# execute as @a if score @s criteria matches 2..3 run scoreboard players set @s sneakTimer 0
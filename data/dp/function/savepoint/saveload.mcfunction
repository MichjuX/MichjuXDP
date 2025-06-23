execute as @a at @s if score @s isSneaking matches 1 run scoreboard players add @s saveLoad 1
execute as @a at @s unless score @s isSneaking matches 1 run scoreboard players set @s saveLoad 0

execute as @a at @s if score @s saveLoad matches 40.. if score @s isSneaking matches 1 run scoreboard players set @s save 1
execute as @a at @s if score @s saveLoad matches ..40 run scoreboard players set @s save 0
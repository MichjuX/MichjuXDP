
execute as @a if score @s isSneaking matches 1 run scoreboard players add @s sneakTimer 1
execute if score @s sneakTimer matches 20.. run scoreboard players set @s criteria 2
# execute if score @s sneakTimer matches 20.. run scoreboard players set @s sneakTimer 0
execute as @a unless score @s isSneaking matches 1 run scoreboard players set @s sneakTimer 0

# Sprawdzanie slota
execute as @a store result score @s selectedSlot run data get entity @s SelectedItemSlot

execute as @a run scoreboard players add @s spell_timer 1
execute as @a if score @s spell_timer matches 20.. run scoreboard players set @s spell_timer 0

execute as @a run function dp:spell/execute
execute as @a run function dp:spell/display_spell
execute as @a run function dp:savepoint/saveload


# Resetuj isSneaking
scoreboard players set @a isSneaking 0

#JUMP
# execute as @a run function dp:jump
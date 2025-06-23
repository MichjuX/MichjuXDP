execute as @a at @s if score @s selectedSlot matches 0 unless score @s spellSelection matches 10 run scoreboard players set @s spellSelection 1

# Spell Nullification
execute as @a at @s if score @s selectedSlot matches 0 if score @s spellSelection matches 10 run scoreboard players set @s selectedSpell 0
execute as @a at @s if score @s selectedSlot matches 0 if score @s spellSelection matches 10 run title @s actionbar {"translate":"CLEARED","color":"green"}
execute as @a at @s if score @s selectedSlot matches 0 if score @s spellSelection matches 10 run scoreboard players set @s spellSelection 0

#Spell 1
execute as @a at @s if score @s selectedSlot matches 1 if score @s spellSelection matches 1 run scoreboard players set @s spellSelection 2
execute as @a at @s if score @s selectedSlot matches 2 if score @s spellSelection matches 2 run scoreboard players set @s spellSelection 3
execute as @a at @s if score @s selectedSlot matches 3 if score @s spellSelection matches 3 run scoreboard players set @s selectedSpell 1
# Reset
execute as @a at @s if score @s selectedSlot matches 3 if score @s spellSelection matches 3 run scoreboard players set @s spellSelection 0


#Egzekucja
# execute as @a if score @s spell_1 matches 4 run scoreboard players set @s selectedSpell 1
execute as @a if score @s selectedSpell matches 1 run function dp:spell/spells/double_jump


#Spell 2
execute as @a at @s if score @s selectedSlot matches 2 if score @s spellSelection matches 1 run scoreboard players set @s spellSelection 10
execute as @a at @s if score @s selectedSlot matches 3 if score @s spellSelection matches 10 run scoreboard players set @s selectedSpell 2 
execute as @a at @s if score @s selectedSlot matches 3 if score @s spellSelection matches 10 run scoreboard players set @s spellSelection 0

#Egzekucja
execute as @a if score @s selectedSpell matches 2 run function dp:spell/spells/dash/dash
# execute as @a if score @s spellSelection matches 11 run effect give @s minecraft:slow_falling 1 0 false
# execute as @a if score @s spellSelection matches 11 run scoreboard players set @s spellSelection 0

#Spell 3 SHRINK
execute as @a at @s if score @s selectedSlot matches 1 if score @s spellSelection matches 10 run scoreboard players set @s selectedSpell 3
execute as @a at @s if score @s selectedSlot matches 1 if score @s spellSelection matches 10 run scoreboard players set @s spellSelection 0

#Egzekucja
execute as @a if score @s selectedSpell matches 3 run function dp:spell/spells/shrink/execute_shrink

#Spell 4
execute as @a at @s if score @s selectedSlot matches 3 if score @s spellSelection matches 1 run scoreboard players set @s spellSelection 30
execute as @a at @s if score @s selectedSlot matches 4 if score @s spellSelection matches 30 run scoreboard players set @s selectedSpell 4

#Egzekucja
execute as @a if score @s selectedSpell matches 4 run function dp:spell/spells/green/green

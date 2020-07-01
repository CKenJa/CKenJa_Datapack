scoreboard players operation #id ckenja_maximus = @s ckenja_id
execute as @e[type=#ckenja_maximus:horses,scores={ckenja_maximus=0..}] if score #id ckenja_maximus = @s ckenja_maximus run tp ~ ~ ~
playsound block.note_block.flute player @a ~ ~ ~ 1 0
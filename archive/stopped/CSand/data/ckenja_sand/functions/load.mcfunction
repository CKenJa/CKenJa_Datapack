tellraw @a {"text":"CKenJa's sand datapack loaded","color":"red"}
scoreboard objectives add ckenja_sand dummy
execute unless score # ckenja_sand matches 0.. run scoreboard players set # ckenja_sand 1
tellraw @a {"text":"CKenJa's nether datapack loaded","color":"red"}
scoreboard objectives add ckenja_nether dummy
execute unless score #loop ckenja_nether matches 1.. run scoreboard players set #loop ckenja_nether 100 
tellraw @a {"text":"CKenJa's nether datapack loaded","color":"red"}
scoreboard objectives add ckenja_nether dummy
execute unless score #loop ckenja_nether matches 1.. run scoreboard players set #loop ckenja_nether 100
execute unless score #stone ckenja_nether matches 0.. run scoreboard players set #stone ckenja_nether 1 
execute unless score #mode ckenja_nether matches 0.. run scoreboard players set #mode ckenja_nether 0
execute unless score #diagonal ckenja_nether matches 0.. run scoreboard players set #diagonal ckenja_nether 0

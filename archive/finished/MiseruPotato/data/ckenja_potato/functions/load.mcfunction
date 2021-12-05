tellraw @a {"text":"CKenJa's Potato Cannon Datapack loaded","color":"red"}
scoreboard objectives add ckenja_potato dummy
scoreboard objectives add ckenja_potato_q minecraft.dropped:minecraft.potato
execute unless score #range ckenja_potato matches 1.. run scoreboard players set #range ckenja_potato 100
execute unless score #speed ckenja_potato matches 1.. run scoreboard players set #speed ckenja_potato 5
execute unless score #potato_speed ckenja_potato matches 1.. run scoreboard players set #potato_speed ckenja_potato 2
execute unless score #cooltime ckenja_potato matches 1.. run scoreboard players set #cooltime ckenja_potato 24
execute unless score #infinity ckenja_potato matches 0.. run scoreboard players set #infinity ckenja_potato 1
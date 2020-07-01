scoreboard objectives add Motion_Speed dummy
scoreboard objectives add Motion_Power dummy
scoreboard objectives add Armor_Check dummy
scoreboard objectives add BulletRemain dummy
scoreboard objectives add T_Hard_Moveset1 dummy
scoreboard objectives add T_Hard_Moveset2 dummy
scoreboard objectives add T_Hard_Moveset3 dummy
scoreboard objectives add T_Hard_Torch dummy
scoreboard objectives add T_Hard_Door dummy
scoreboard objectives add T_Hard_Door2 dummy
scoreboard objectives add T_Hard_Door3 dummy
scoreboard objectives add T_Hard_Y_Check dummy
scoreboard objectives add T_Hard_Place dummy
scoreboard objectives add T_Hard_Dig dummy
#Gamerule1　モブ破壊オンオフ
scoreboard objectives add T_Hard_Gamerule1 dummy
execute unless score #T_Hard_Gamerule T_Hard_Gamerule1 = #T_Hard_Gamerule T_Hard_Gamerule1 run scoreboard players set #T_Hard_Gamerule T_Hard_Gamerule1 1
#Gamerule2　ゾンビブロック設置オンオフ
scoreboard objectives add T_Hard_Gamerule2 dummy
execute unless score #T_Hard_Gamerule T_Hard_Gamerule2 = #T_Hard_Gamerule T_Hard_Gamerule2 run scoreboard players set #T_Hard_Gamerule T_Hard_Gamerule2 1
#Gamerule3　鉄ドアを壊すかどうか
scoreboard objectives add T_Hard_Gamerule3 dummy
execute unless score #T_Hard_Gamerule T_Hard_Gamerule3 = #T_Hard_Gamerule T_Hard_Gamerule3 run scoreboard players set #T_Hard_Gamerule T_Hard_Gamerule3 0
#Gamerule4 クリーパーの爆発変更
scoreboard objectives add T_Hard_Gamerule4 dummy
execute unless score #T_Hard_Gamerule T_Hard_Gamerule4 = #T_Hard_Gamerule T_Hard_Gamerule4 run scoreboard players set #T_Hard_Gamerule T_Hard_Gamerule4 1
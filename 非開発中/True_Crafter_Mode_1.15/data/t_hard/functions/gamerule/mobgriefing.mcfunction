#初期設定ではオン、1
scoreboard players add #T_Hard_Gamerule T_Hard_Gamerule1 1
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 2 run scoreboard players set #T_Hard_Gamerule T_Hard_Gamerule1 0

execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 0 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブのブロック破壊を 無効 にしました。\nMob block destroy disabled.\n"}]
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 1 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブのブロック破壊を 有効 にしました。\nMob block destroy enabled.\n"}]
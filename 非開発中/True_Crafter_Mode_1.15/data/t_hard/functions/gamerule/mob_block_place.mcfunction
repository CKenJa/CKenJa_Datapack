#初期設定ではオン、1
scoreboard players add #T_Hard_Gamerule T_Hard_Gamerule2 1
execute if score #T_Hard_Gamerule T_Hard_Gamerule2 matches 2 run scoreboard players set #T_Hard_Gamerule T_Hard_Gamerule2 0

execute if score #T_Hard_Gamerule T_Hard_Gamerule2 matches 0 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブのブロック設置を 無効 にしました。\nMob iron doors destroy disabled.\n"}]
execute if score #T_Hard_Gamerule T_Hard_Gamerule2 matches 1 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブのブロック設置を 有効 にしました。\nMob iron doors destroy enabled.\n"}]
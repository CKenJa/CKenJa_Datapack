#初期設定ではオフ、0
scoreboard players add #T_Hard_Gamerule T_Hard_Gamerule3 1
execute if score #T_Hard_Gamerule T_Hard_Gamerule3 matches 2 run scoreboard players set #T_Hard_Gamerule T_Hard_Gamerule3 0

execute if score #T_Hard_Gamerule T_Hard_Gamerule3 matches 0 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブの鉄のドアの破壊を 無効 にしました。\nMob iron doors destroy disabled.\n"}]
execute if score #T_Hard_Gamerule T_Hard_Gamerule3 matches 1 run tellraw @s [{"text":"\n[True Crafter Mode]"},{"text":"\nモブの鉄のドアの破壊を 有効 にしました。\nMob iron doors destroy enabled.\n"}]
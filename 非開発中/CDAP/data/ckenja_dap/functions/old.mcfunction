#疑似カーソル操作
##毎tick
###取得
execute store result score # ckenja_dap_1 run data get entity @s Rotation[1]
execute store result score # ckenja_dap_0 run data get entity @s Rotation[0]
###値調整
execute if score # ckenja_dap_1 matches ..-270 run scoreboard players add # ckenja_dap_1 90
execute if score # ckenja_dap_1 matches -90.. run scoreboard players remove # ckenja_dap_1 90
execute if score # ckenja_dap_0 matches ..-45 run scoreboard players add # ckenja_dap_1 45
execute if score # ckenja_dap_0 matches 45.. run scoreboard players remove # ckenja_dap_1 45
###差を求め
scoreboard players operation # ckenja_dap_1 -= @s ckenja_dap_1
scoreboard players operation # ckenja_dap_0 -= @s ckenja_dap_0
###差からカーソルの位置を変更、はみ出さないようにif score
#Y10,20,30,40,50#X1,2,3の組み合わせ、最小11、最大53
execute if score # ckenja_dap_0 <= #-sensitivity_y ckenja_dap_point if score @s ckenja_dap_point matches ..52 run scoreboard players add @s ckenja_dap_point 1
execute if score # ckenja_dap_0 >= #sensitivity_y ckenja_dap_point if score @s ckenja_dap_point matches 12.. run scoreboard players remove @s ckenja_dap_point 1
execute if score # ckenja_dap_1 <= #-sensitivity_x ckenja_dap_point if score @s ckenja_dap_point matches ..43 run scoreboard players add @s ckenja_dap_point 10
execute if score # ckenja_dap_1 >= #sensitivity_x ckenja_dap_point if score @s ckenja_dap_point matches 21.. run scoreboard players remove @s ckenja_dap_point 10
###差からカーソルの位置を変更
#execute if score # ckenja_dap_0 >= #sensitivity ckenja_dap_y run scoreboard players remove @s ckenja_dap_y 1
#execute if score # ckenja_dap_0 <= #-sensitivity ckenja_dap_y run scoreboard players add @s ckenja_dap_y 1
#execute if score # ckenja_dap_1 >= #sensitivity ckenja_dap_x run scoreboard players remove @s ckenja_dap_x 1
#execute if score # ckenja_dap_1 <= #-sensitivity ckenja_dap_x run scoreboard players add @s ckenja_dap_x 1
###テスト用表示
title @s actionbar [{"score":{"name":"@s","objective":"ckenja_dap_point"}}]

##始めに実行
scoreboard objectives add ckenja_dap_0 dummy
scoreboard objectives add ckenja_dap_1 dummy
scoreboard objectives add ckenja_dap_point dummy

scoreboard players set #sensitivity_x ckenja_dap_point 10
scoreboard players set #sensitivity_y ckenja_dap_point 10

scoreboard players set #- ckenja_dap_point -1
scoreboard players operation #sensitivity_x ckenja_dap_point = #-sensitivity_x ckenja_dap_point
scoreboard players operation #-sensitivity_x ckenja_dap_point *= #- ckenja_dap_point
scoreboard players operation #sensitivity_y ckenja_dap_point = #-sensitivity_y ckenja_dap_point
scoreboard players operation #-sensitivity_y ckenja_dap_point *= #- ckenja_dap_point

###かーそる
scoreboard players set @s ckenja_dap_point 11
execute store result score @s ckenja_dap_1 run data get entity @s Rotation[1]
execute store result score @s ckenja_dap_0 run data get entity @s Rotation[0]
###値調整
execute if score # ckenja_dap_1 matches ..-270 run scoreboard players add @s ckenja_dap_1 90
execute if score # ckenja_dap_1 matches -90.. run scoreboard players remove @s ckenja_dap_1 90
execute if score # ckenja_dap_0 matches ..-45 run scoreboard players add @s ckenja_dap_1 45
execute if score # ckenja_dap_0 matches 45.. run scoreboard players remove @s ckenja_dap_1 45
execute if entity @s[tag=ckenja_ghost_polgui_initial] run function ckenja_ghost:polgui/setup
#一定時間ごとにイタズラする。
scoreboard players operation @s ckenja_ghost %= #1000 ckj01_data
execute if score @s ckenja_ghost matches 0 run function ckenja_ghost:polgui/trick
#キャンディーがあったら手名付けられる。

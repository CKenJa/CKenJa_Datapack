execute if entity @s[tag=ckenja_ghost_polgei_initial] run function ckenja_ghost:polgei/setup

#一定時間ごとにイタズラする。
scoreboard players operation #tmp ckj01_data = @s ckenja_ghost 
scoreboard players operation #tmp ckj01_data %= #1000 ckj01_data
execute if score #tmp ckj01_data matches 0 run function ckenja_ghost:polgei/trick
#キャンディーがあったら手名付けられる。


#
scoreboard players remove @s ckenja_ghost 1
execute if score @s ckenja_ghost matches ..0 run kill @s
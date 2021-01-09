#居なかったら召喚
execute store result score #tmp ckenja_noisy run execute if entity @e[type=area_effect_cloud,tag=ckenja_noisy]
execute if score #tmp ckenja_noisy matches ..0 run function ckenja_noisy:system/summon
#多かったら間引く
execute if score #tmp ckenja_noisy matches 2.. run kill @e[type=minecraft:area_effect_cloud,tag=ckenja_noisy,limit=1,sort=furthest]
#メイン
execute as @e[type=area_effect_cloud,tag=ckenja_noisy,limit=1] run function ckenja_noisy:system/general

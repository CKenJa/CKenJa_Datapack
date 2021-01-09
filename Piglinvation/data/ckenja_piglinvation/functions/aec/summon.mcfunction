#居なかったら召喚
execute store result score #tmp ckenja_noisy run execute if entity @e[type=area_effect_cloud,tag=ckenja_piglinvation_aec]
execute if score #tmp ckenja_noisy matches ..0 run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Tags:["ckenja_piglinvation_aec"]}
#多かったら間引く
execute if score #tmp ckenja_noisy matches 2.. run kill @e[type=minecraft:area_effect_cloud,tag=ckenja_piglinvation_aec,limit=1,sort=furthest]

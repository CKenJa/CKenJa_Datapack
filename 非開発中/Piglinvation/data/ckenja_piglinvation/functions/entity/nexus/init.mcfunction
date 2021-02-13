scoreboard players set @s ckj_piglinvation 1
tag @s remove ckenja_piglinvation_initial
#ネクサスが複数あると自壊する
execute store result score #tmp ckj_piglinvation run execute if entity @e[tag=ckenja_piglinvation_nexus]
execute if score #tmp ckj_piglinvation matches 2.. run kill @s
execute if score #tmp ckj_piglinvation matches 2.. run function ckenja_piglinvation:craft/nexus

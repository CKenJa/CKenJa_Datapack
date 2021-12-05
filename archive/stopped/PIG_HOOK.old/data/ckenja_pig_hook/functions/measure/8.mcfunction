execute store success score #tmp_4 ckj03_data run execute if entity @s[distance=..4]
execute if score #tmp_4 ckj03_data matches 1 run function ckenja_pig_hook:measure/4
execute if score #tmp_4 ckj03_data matches 0 run function ckenja_pig_hook:measure/sum/4
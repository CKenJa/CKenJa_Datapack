execute store success score #tmp_2 ckj03_data run execute if entity @s[distance=..2]
execute if score #tmp_2 ckj03_data matches 1 run function ckenja_pig_hook:measure/2
execute if score #tmp_2 ckj03_data matches 0 run function ckenja_pig_hook:measure/sum/2
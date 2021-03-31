execute store success score #tmp_0.25 ckj03_data run execute if entity @s[distance=..0.25]
execute if score #tmp_0.25 ckj03_data matches 1 run function ckenja_pig_hook:measure/0.25
execute if score #tmp_0.25 ckj03_data matches 0 run function ckenja_pig_hook:measure/sum/0.25
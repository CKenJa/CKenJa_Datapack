execute store success score #tmp_1 ckj04.data run execute if entity @s[distance=..1]
execute if score #tmp_1 ckj04.data matches 1 run function ckenja.pigrapple:measure/1
execute if score #tmp_1 ckj04.data matches 0 run function ckenja.pigrapple:measure/sum/1
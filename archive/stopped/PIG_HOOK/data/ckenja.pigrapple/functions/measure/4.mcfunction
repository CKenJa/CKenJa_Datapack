execute store success score #tmp_2 ckj04.data run execute if entity @s[distance=..2]
execute if score #tmp_2 ckj04.data matches 1 run function ckenja.pigrapple:measure/2
execute if score #tmp_2 ckj04.data matches 0 run function ckenja.pigrapple:measure/sum/2
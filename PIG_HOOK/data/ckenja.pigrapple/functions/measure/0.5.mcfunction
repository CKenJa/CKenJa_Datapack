execute store success score #tmp_0.25 ckj04.data run execute if entity @s[distance=..0.25]
execute if score #tmp_0.25 ckj04.data matches 1 run function ckenja.pigrapple:measure/0.25
execute if score #tmp_0.25 ckj04.data matches 0 run function ckenja.pigrapple:measure/sum/0.25
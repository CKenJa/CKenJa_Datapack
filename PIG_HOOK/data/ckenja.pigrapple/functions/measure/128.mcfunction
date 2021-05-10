execute store success score #tmp_64 ckj04.data run execute if entity @s[distance=..64]
execute if score #tmp_64 ckj04.data matches 1 run function ckenja.pigrapple:measure/64
execute if score #tmp_64 ckj04.data matches 0 run function ckenja.pigrapple:measure/sum/64
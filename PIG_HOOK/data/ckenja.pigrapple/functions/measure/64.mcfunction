execute store success score #tmp_32 ckj04.data run execute if entity @s[distance=..32]
execute if score #tmp_32 ckj04.data matches 1 run function ckenja.pigrapple:measure/32
execute if score #tmp_32 ckj04.data matches 0 run function ckenja.pigrapple:measure/sum/32
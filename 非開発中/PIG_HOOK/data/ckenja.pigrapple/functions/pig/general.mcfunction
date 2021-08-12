#execute if entity @s[tag=ckenja.pigrapple_ride]
#仮
scoreboard players set #tmp_ride ckj04.data 1
#乗られているならMotion計算
execute if score #tmp_ride ckj04.data matches 1 run function ckenja.pigrapple:operation/swing/general

#乗られているか取得する
#execute store success score #tmp_ride ckj03_data run execute if data entity @s
scoreboard players set #tmp_ride ckj03_data 1
#乗られているならMotion計算
execute if score #tmp_ride ckj03_data matches 1 run function ckenja_pig_hook:operation/graple
#乗られていないブタはキルする。あとフックも消す
execute if score #tmp_ride ckj03_data matches 0 run function ckenja_pig_hook:pig/end
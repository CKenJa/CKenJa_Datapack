#execute if data storage ckj03: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} unless data storage ckj03: fetch_entitydata{Inventory:[{Slot:-106b,tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}]} run function ckenja_pig_hook:player/exist_hook/have
#execute unless data storage ckj03: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} if data storage ckj03: fetch_entitydata{Inventory:[{Slot:-106b,tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}]} run function ckenja_pig_hook:behavior/boost
execute store success score #tmp_boost ckj03_data run execute if entity @s[tag=ckenja_pig_hook_boost]
#モードが切り替わったらoperation/boost内で#tmp_boostを0にする
execute if score #tmp_boost ckj03_data matches 1 run function ckenja_pig_hook:operation/boost
execute if score #tmp_boost ckj03_data matches 0 run function ckenja_pig_hook:operation/graple
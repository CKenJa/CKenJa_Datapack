execute if data storage ckj03: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} unless data storage ckj03: fetch_entitydata{Inventory:[{Slot:-106b,tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}]} if score @s ckj03_coas matches 1.. run function ckenja_pig_hook:behavior/shot
execute unless data storage ckj03: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} if data storage ckj03: fetch_entitydata{Inventory:[{Slot:-106b,tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}]} run function ckenja_pig_hook:behavior/jump
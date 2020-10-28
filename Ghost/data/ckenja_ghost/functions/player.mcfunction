execute if score @s ckj01_coas matches 1 if data entity @s SelectedItem.tag.ckenja{id:"ckenja_ghost:wand"} run function ckenja_ghost:wand/general
execute if data entity @s Inventory[{tag:{ckenja:{Tags:["ckenja_ghost:phantom"]}}}] run function ckenja_ghost:player/inventory

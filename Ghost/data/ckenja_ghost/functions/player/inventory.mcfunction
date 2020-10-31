#イタズラダイヤを消す
execute if data entity @s Inventory[{id:"minecraft:diamond",tag:{ckenja:{Tags:["ckenja_ghost:phantom"]}}}] run clear @s diamond{tag:{ckenja:{Tags:["ckenja_ghost:phantom"]}}}
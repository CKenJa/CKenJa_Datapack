#イタズラダイヤを消す
execute if data entity @s Inventory[{id:"minecraft:diamond",tag:{ckenja:{Tags:["ckenja_ghost:phantom"]}}}] run clear @s diamond{tag:{ckenja:{Tags:["ckenja_ghost:phantom"]}}}
#アマスタクリック検知
execute if data entity @s Inventory[{tag:{ckenja:{Tags:["ckenja_ghost:click"]}}}] run function ckenja_ghost:player/click
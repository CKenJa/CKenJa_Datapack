tag @s remove ckenja_cut8_x
tag @s remove ckenja_cut8_y
tag @s remove ckenja_cut8_z
#長押しはじめ判定
execute if score @s ckj02_coas matches 1.. run tag @s add ckenja_cut8_hold
#長押し終わり判定
execute if data entity @s Inventory[{Count:-106b}].tag{Charged:1b} run function ckenja_cut8:player/hold_off
#長押し検知用のアイテムを持たせる
replaceitem entity @s weapon.offhand crossbow{Enchantments:[{id:"minecraft:quick_charge",lvl:5}]} 1
replaceitem entity @s weapon.mainhand carrot_on_a_stick 1
#長押し中なら例の関数を
execute if entity @s[tag=ckenja_cut8_hold] run function ckenja_cut8:player/hold
#タグあったら斬り判定
execute positioned ^ ^ ^3 as @e[type=armor_stand,tag=ckenja_cut8_cube,distance=..0.5] run function ckenja_cut8:player/cut
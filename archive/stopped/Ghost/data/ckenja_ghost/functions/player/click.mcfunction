#ポルターガイスト
#
execute if data entity @s Inventory[{tag:{ckenja:{Tags:["ckenja_ghost:click_polgei"]}}}] run function ckenja_ghost:player/polgei

#ゴースト(キャンディー)
execute if data entity @s Inventory[{tag:{ckenja:{Tags:["ckenja_ghost:click_candy"]}}}] run function ckenja_ghost:player/candy

#ゴースト(シレイのツエ)
execute if data entity @s Inventory[{tag:{ckenja:{Tags:["ckenja_ghost:click_wand"]}}}] run function ckenja_ghost:player/wand

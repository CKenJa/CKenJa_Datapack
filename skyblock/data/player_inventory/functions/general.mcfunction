#フリータスクより 2020/08/29 アイテム装備時のインベントリ操作

#- 装備スロット（メインハンド、オフハンド、防具、アクセサリー）にアイテムが入ってきたら(インベントリ変更検知)
function oh_my_dat:please
execute store success score #inventory_change player_inventory run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data set from entity @s Inventory
execute if score #inventory_change player_inventory matches 1 run tag @s add inventory_change
execute if score #inventory_change player_inventory matches 0 run tag @s remove inventory_change

#- そのスロットに対応した装備品かどうかカスタムタグを調べる。
#- - 対応しているならアイテムのカスタムタグ内の要求レベルのデータとプレイヤーのレベル（仮のスコアで良い）を比べる。
#- - プレイヤーのレベルが要求レベルに達していない場合やそもそも装備品でなかった場合、装備アイテムをドロップする。
#- - - アクセサリースロット（inventory9~13）に装備可能アイテムがない場合、空のアイテム（板ガラスとかで良い）で埋めておく。
execute if entity @s[tag=inventory_change] run function player_inventory:validate_type/general
#アイテム装備時のインベントリ操作
#1.装備スロット（メインハンド、オフハンド、防具、アクセサリー）にアイテムが入ってきたら(インベントリ変更検知)
function oh_my_dat:please  
#ストレージにstore successを保存。変数名は考えろ
execute store success storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data set from entity @s Inventory
execute if score #general ADCitems_change matches 1 run tag @s add ADCitems_change
execute if score #general ADCitems_change matches 0 run tag @s remove ADCitems_change

#2.そのスロットに対応した装備品かどうかカスタムタグを調べる。

#3.対応しているならアイテムのカスタムタグ内の要求レベルのデータとプレイヤーのレベル（仮のスコアで良い）を比べる。

#4.プレイヤーのレベルが要求レベルに達していない場合やそもそも装備品でなかった場合、装備アイテムをドロップする。

#5.アクセサリースロット（inventory9~13）に装備可能アイテムがない場合、空のアイテム（板ガラスとかで良い）で埋めておく。
#2020/08/29 フリータスクより
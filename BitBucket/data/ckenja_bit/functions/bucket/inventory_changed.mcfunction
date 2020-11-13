#tmp3:バケツのスロット番号

#複数のバケツがあった場合は統合する。
data modify storage ckenja_bit: Tmp set from storage ckenja_bit: Inventory
##全要素数
execute store result score #tmp3 ckj01_data run data get storage ckenja_bit: Tmp
##異なる要素数
execute store result score #tmp4 ckj01_data run data modify storage ckenja_bit: Tmp[] merge from storage ckenja_bit: Tmp[0]
##要素の数 - 異なる要素の数 = ..1 なら同じ要素が複数ある。
scoreboard players operation #tmp3 ckj01_data -= #tmp4 ckj01_data
execute if score #tmp3 ckj01_data matches ..1 run function ckenja_bit:bucket/integrate/general

#アイテム数が64未満の時に64にする。
execute store result score #tmp3 ckj01_data run data get storage ckenja_bit: Inventory[0].Count
execute if score #tmp3 ckj01_data < #64 ckj01_data run function ckenja_bit:bucket/restock/general

#制作スロットに入ったバケツは分解する。


#周囲に同種のバケツentityがあった場合は通常アイテムに変換する。
execute as @e[type=item,tag=!ckenja_bit,tag=!global.ignore,tag=!global.ignore.kill,distance=..2,nbt={Item:{tag:{ckenja:{ckenja_bit:{}}}}}] run function ckenja_bit:bucket/drop/general
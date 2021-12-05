#tmp4:バケツを除いた、Inventorty[0]のslot番号
##Inventoryの自バケツを別の場所に移す。
data remove storage ckenja_bit: Buckets
data modify storage ckenja_bit: Buckets[0] set from storage ckenja_bit: Inventory[0]
data remove storage ckenja_bit: Inventory[0]
##ループ制御用のスロット番号をとる
execute store result score #tmp4 ckj01_data run data get storage ckenja_bit: Inventory[0].Slot
##Inventoryを回して同じデータを持つバケツを同じ場所に移す
function ckenja_bit:bucket/integrate/find
##Bucketsを回してバケツを統合する。Slotは最も少ないものになる。
function ckenja_bit:bucket/integrate/merge
##バケツをInventoryに戻す。
data modify storage ckenja_bit: Inventory prepend from storage ckenja_bit: Buckets[0]

##Inventoryの自バケツを別の場所に移す。
data remove storage ckenja_bit: Buckets
data modify storage ckenja_bit: Buckets[0] set from storage ckenja_bit: Inventory[0]
data remove storage ckenja_bit: Inventory[0]
##Inventoryを回して同じデータを持つバケツを同じ場所に移す
function ckenja_bit:bucket/integrate/find
##Bucketsを回してバケツを統合する。Slotは最も少ないものになる。
function ckenja_bit:bucket/integrate/merge
##バケツをInventoryに戻す。
data modify storage ckenja_bit: Inventory prepend from storage ckenja_bit: Buckets[0]

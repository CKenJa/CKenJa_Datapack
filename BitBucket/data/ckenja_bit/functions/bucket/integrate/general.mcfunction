##Inventoryの自バケツを別の場所に移す。
data remove storage ckenja_bit: Buckets
data modify storage ckenja_bit: Buckets append from storage ckenja_bit: Inventory[0]
##Inventoryを回して同じデータを持つバケツを同じ場所に移す
function ckenja_bit:bucket/integrate/loop
##バケツを統合する。Slotは最も少ないものになる。

##バケツをInventorに戻す。

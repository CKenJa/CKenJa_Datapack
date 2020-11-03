#storage
data modify storage ckenja_bit: Inventory set from entity @s Inventory
#set
execute if predicate ckj01:sneak if data entity @s SelectedItem.tag.ctc{id:"ckenja_bit:bit_bucket"} if data storage ckenja_bit: Inventory[{Slot:-106b}] run function ckenja_bit:set
#bucketごとに爆発する。
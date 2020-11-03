data modify storage ckenja_bit: SelectedItem.id set from storage ckenja_bit: Inventory[{Slot:-106b}].id
data modify storage ckenja_bit: tmp.Inventory set from storage ckenja_bit: Inventory
#同じアイテムをカウントする
function ckenja_bit:bucket/set/loop

execute store result score #tmp2 ckj01_data run data get storage ckenja_bit: Inventory[{Slot:-106b}].Count
#execute if score #tmp2 ckj01_data matches ..16 run function 
#data modify storage ckenja_bit: SelectedItem.Count set from storage ckenja_bit: Inventory[{Slot:-106b}].id


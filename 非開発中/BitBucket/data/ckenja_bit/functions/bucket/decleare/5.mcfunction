data modify storage ckenja_bit: Inventory[{Slot:5b}].id merge from storage ckenja_bit: Inventory[{Slot:-109b}].id
data modify storage ckenja_bit: Inventory[{Slot:5b}].Count merge from storage ckenja_bit: Inventory[{Slot:-109b}].Count
data remove storage ckenja_bit: Inventory[{Slot:5b}].tag.ctc
data modify storage ckenja_bit: Inventory[{Slot:5b}].tag merge from storage ckenja_bit: Inventory[{Slot:-109b}].tag
data modify storage ckenja_bit: Inventory[{Slot:5b}].tag.ckenja.ckenja_bit.Count merge from storage ckenja_bit: Inventory[{Slot:6b}].Count
data modify storage ckenja_bit: Inventory[{Slot:5b}].tag.ckenja_bit.UUID[0] set from entity @e[tag=ckenja_bit,limit=1] UUID[0]
data modify storage ckenja_bit: Inventory[{Slot:5b}].tag.ckenja_bit.UUID[1] set from entity @e[tag=ckenja_bit,limit=1] UUID[1]
data modify storage ckenja_bit: Inventory[{Slot:5b}].tag.ckenja_bit.UUID[2] set from entity @e[tag=ckenja_bit,limit=1] UUID[2]
data modify storage ckenja_bit: Inventory[{Slot:5b}].tag.ckenja_bit.UUID[3] set from entity @e[tag=ckenja_bit,limit=1] UUID[3]
data modify storage ckenja_bit: Inventory[{Slot:2b}].id merge from storage ckenja_bit: Inventory[{Slot:-109b}].id
data modify storage ckenja_bit: Inventory[{Slot:2b}].Count merge from storage ckenja_bit: Inventory[{Slot:-109b}].Count
data remove storage ckenja_bit: Inventory[{Slot:2b}].tag.ctc
data modify storage ckenja_bit: Inventory[{Slot:2b}].tag merge from storage ckenja_bit: Inventory[{Slot:-109b}].tag
data modify storage ckenja_bit: Inventory[{Slot:2b}].tag.ckenja.ckenja_bit.Count merge from storage ckenja_bit: Inventory[{Slot:2b}].Count
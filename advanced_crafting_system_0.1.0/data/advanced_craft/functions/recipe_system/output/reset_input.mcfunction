







#インプットをコピーする
data remove storage advanced_datapacks:craft work_space[0].input_nbt[]

data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:0b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:1b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:9b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:10b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:11b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:18b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:19b}]
data modify storage advanced_datapacks:craft work_space[0].input_nbt append from block ~ ~ ~ Items[{Slot:20b}]
execute store result score #input_item ADCslot0_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:0b}].Count 1
execute store result score #input_item ADCslot1_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:1b}].Count 1
execute store result score #input_item ADCslot2_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:2b}].Count 1
execute store result score #input_item ADCslot9_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:9b}].Count 1
execute store result score #input_item ADCslot10_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:10b}].Count 1
execute store result score #input_item ADCslot11_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:11b}].Count 1
execute store result score #input_item ADCslot18_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:18b}].Count 1
execute store result score #input_item ADCslot19_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:19b}].Count 1
execute store result score #input_item ADCslot20_count run data get storage advanced_datapacks:craft work_space[0].input_nbt[{Slot:20b}].Count 1

data remove storage advanced_datapacks:craft work_space[0].input_nbt[].Count
















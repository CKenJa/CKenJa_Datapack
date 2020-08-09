execute store result score #input_item ADCslot0_count run data get block ~ ~ ~ Items[{Slot:0b}].Count 1 
execute store result score #input_item ADCslot1_count run data get block ~ ~ ~ Items[{Slot:1b}].Count 1 
execute store result score #input_item ADCslot2_count run data get block ~ ~ ~ Items[{Slot:2b}].Count 1 
execute store result score #input_item ADCslot9_count run data get block ~ ~ ~ Items[{Slot:9b}].Count 1 
execute store result score #input_item ADCslot10_count run data get block ~ ~ ~ Items[{Slot:10b}].Count 1 
execute store result score #input_item ADCslot11_count run data get block ~ ~ ~ Items[{Slot:11b}].Count 1 
execute store result score #input_item ADCslot18_count run data get block ~ ~ ~ Items[{Slot:18b}].Count 1 
execute store result score #input_item ADCslot19_count run data get block ~ ~ ~ Items[{Slot:19b}].Count 1 
execute store result score #input_item ADCslot20_count run data get block ~ ~ ~ Items[{Slot:20b}].Count 1 











scoreboard players operation #input_item ADCslot0_count -= #recipe ADCslot0_count 
scoreboard players operation #input_item ADCslot1_count -= #recipe ADCslot1_count 
scoreboard players operation #input_item ADCslot2_count -= #recipe ADCslot2_count 
scoreboard players operation #input_item ADCslot9_count -= #recipe ADCslot9_count 
scoreboard players operation #input_item ADCslot10_count -= #recipe ADCslot10_count
scoreboard players operation #input_item ADCslot11_count -= #recipe ADCslot11_count
scoreboard players operation #input_item ADCslot18_count -= #recipe ADCslot18_count
scoreboard players operation #input_item ADCslot19_count -= #recipe ADCslot19_count
scoreboard players operation #input_item ADCslot20_count -= #recipe ADCslot20_count


execute if score #input_item ADCslot0_count matches ..0 run data remove block ~ ~ ~ Items[{Slot:0b}] 
execute if score #input_item ADCslot0_count matches 1.. store result block ~ ~ ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get #input_item ADCslot0_count
execute if score #input_item ADCslot1_count matches ..0 run data remove block ~ ~ ~ Items[{Slot:1b}] 
execute if score #input_item ADCslot1_count matches 1.. store result block ~ ~ ~ Items[{Slot:1b}].Count byte 1 run scoreboard players get #input_item ADCslot1_count
execute if score #input_item ADCslot2_count matches ..0 run data remove block ~ ~ ~ Items[{Slot:2b}] 
execute if score #input_item ADCslot2_count matches 1.. store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get #input_item ADCslot2_count
execute if score #input_item ADCslot9_count matches ..0 run data remove block ~ ~ ~ Items[{Slot:9b}] 
execute if score #input_item ADCslot9_count matches 1.. store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get #input_item ADCslot9_count
execute if score #input_item ADCslot10_count matches ..0 run data remove block ~ ~ ~ Items[{Slot:10b}] 
execute if score #input_item ADCslot10_count matches 1.. store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get #input_item ADCslot10_count
execute if score #input_item ADCslot11_count matches ..0 run data remove block ~ ~ ~ Items[{Slot:11b}] 
execute if score #input_item ADCslot11_count matches 1.. store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get #input_item ADCslot11_count
execute if score #input_item ADCslot18_count matches ..0 run data remove block ~ ~ ~ Items[{Slot:18b}] 
execute if score #input_item ADCslot18_count matches 1.. store result block ~ ~ ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get #input_item ADCslot18_count
execute if score #input_item ADCslot19_count matches ..0 run data remove block ~ ~ ~ Items[{Slot:19b}] 
execute if score #input_item ADCslot19_count matches 1.. store result block ~ ~ ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get #input_item ADCslot19_count
execute if score #input_item ADCslot20_count matches ..0 run data remove block ~ ~ ~ Items[{Slot:20b}] 
execute if score #input_item ADCslot20_count matches 1.. store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get #input_item ADCslot20_count























scoreboard players set #recipe_check ADCmatch_count 1


execute store result score #recipe ADCslot0_count run data get storage advanced_datapacks:craft work_space[0].recipes[0].count0 1
execute store result score #recipe ADCslot1_count run data get storage advanced_datapacks:craft work_space[0].recipes[0].count1 1
execute store result score #recipe ADCslot2_count run data get storage advanced_datapacks:craft work_space[0].recipes[0].count2 1
execute store result score #recipe ADCslot9_count run data get storage advanced_datapacks:craft work_space[0].recipes[0].count9 1
execute store result score #recipe ADCslot10_count run data get storage advanced_datapacks:craft work_space[0].recipes[0].count10 1
execute store result score #recipe ADCslot11_count run data get storage advanced_datapacks:craft work_space[0].recipes[0].count11 1
execute store result score #recipe ADCslot18_count run data get storage advanced_datapacks:craft work_space[0].recipes[0].count18 1
execute store result score #recipe ADCslot19_count run data get storage advanced_datapacks:craft work_space[0].recipes[0].count19 1
execute store result score #recipe ADCslot20_count run data get storage advanced_datapacks:craft work_space[0].recipes[0].count20 1




execute if score #input_item ADCslot0_count >= #recipe ADCslot0_count if score #input_item ADCslot1_count >= #recipe ADCslot1_count if score #input_item ADCslot2_count >= #recipe ADCslot2_count if score #input_item ADCslot9_count >= #recipe ADCslot9_count if score #input_item ADCslot10_count >= #recipe ADCslot10_count if score #input_item ADCslot11_count >= #recipe ADCslot11_count if score #input_item ADCslot18_count >= #recipe ADCslot18_count if score #input_item ADCslot19_count >= #recipe ADCslot19_count if score #input_item ADCslot20_count >= #recipe ADCslot20_count run scoreboard players set #recipe_check ADCmatch_count 0









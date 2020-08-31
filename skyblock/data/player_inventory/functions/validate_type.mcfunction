#weapon
#めんどくさい、いらない気がしたのでいるって言われたらやろうか
#hand9
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:9b,tag:{general:{type:"hand"}}}] run function player_inventory:validate_level/9
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:9b,tag:{general:{type:"hand"}}}] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:9b,Count:1b,tag:{empty_item:1b}}] run function player_inventory:drop/9
#neck10
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:10b,tag:{general:{type:"neck"}}}] run function player_inventory:validate_level/10
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:10b,tag:{general:{type:"neck"}}}] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:10b,Count:1b,tag:{empty_item:1b}}] run function player_inventory:drop/10
#ear11
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:11b,tag:{general:{type:"ear"}}}] run function player_inventory:validate_level/11
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:11b,tag:{general:{type:"ear"}}}] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:11b,Count:1b,tag:{empty_item:1b}}] run function player_inventory:drop/11
#bag12
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:12b,tag:{general:{type:"bag"}}}] run function player_inventory:validate_level/12
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:12b,tag:{general:{type:"bag"}}}] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:12b,Count:1b,tag:{empty_item:1b}}] run function player_inventory:drop/12
#bag13
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:13b,tag:{general:{type:"bag"}}}] run function player_inventory:validate_level/13
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:13b,tag:{general:{type:"bag"}}}] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:13b,Count:1b,tag:{empty_item:1b}}] run function player_inventory:drop/13

#head100
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:100b,tag:{general:{type:"head"}}}] run function player_inventory:validate_level/100
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:100b,tag:{general:{type:"head"}}}] run function player_inventory:drop/100
#chest101
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:101b,tag:{general:{type:"chest"}}}] run function player_inventory:validate_level/101
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:101b,tag:{general:{type:"chest"}}}] run function player_inventory:drop/101
#legs102
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:102b,tag:{general:{type:"legs"}}}] run function player_inventory:validate_level/102
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:102b,tag:{general:{type:"legs"}}}] run function player_inventory:drop/102
#feet103
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:103b,tag:{general:{type:"feet "}}}] run function player_inventory:validate_level/103
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:103b,tag:{general:{type:"feet "}}}] run function player_inventory:drop/103
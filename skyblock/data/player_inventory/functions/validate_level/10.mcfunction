execute store result score #general player_inventory run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:10b}].tag.general.level
execute if score #general player_inventory > @s level run function player_inventory:drop/10
execute if score #general player_inventory <= @s level run clear @s black_stained_glass_pane{display:{Name:'{"text":"neck slot"}'},general:{type:"empty_slot"}}
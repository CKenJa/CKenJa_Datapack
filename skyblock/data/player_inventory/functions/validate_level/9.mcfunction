execute store result score #general player_inventory run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:9b}].tag.general.level
execute if score #general player_inventory > @s level run function player_inventory:drop/9
say yey
#> ckenja_pig_hook:behavior/switch
#@pubric ckenja_pig_hook:player/not_ride/general

execute unless data storage ckj03: fetch_entitydata{Tags:["ckenja_pig_hook_player_jet"]} run tag @s add ckenja_pig_hook_jet
execute if data storage ckj03: fetch_entitydata{Tags:["ckenja_pig_hook_player_jet"]} run tag @s remove ckenja_pig_hook_jet
playsound block.note_block.pling master @s
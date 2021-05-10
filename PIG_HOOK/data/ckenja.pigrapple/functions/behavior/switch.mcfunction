#> ckenja.pigrapple:behavior/switch
#@pubric ckenja.pigrapple:player/not_ride/general

execute unless data storage ckj04: fetch_entitydata{Tags:["ckenja.pigrapple_player_jet"]} run tag @s add ckenja.pigrapple_jet
execute if data storage ckj04: fetch_entitydata{Tags:["ckenja.pigrapple_player_jet"]} run tag @s remove ckenja.pigrapple_jet
playsound block.note_block.pling master @s
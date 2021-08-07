#> ckenja.pigrapple:player/none_hook/general
#@within ckenja.pigrapple:player/ride/general

execute if entity @s[tag=ckenja.pigrapple_player_have] run function ckenja.pigrapple:player/none_hook/have
execute if data storage ckj04: fetch_entitydata{RootVehicle:{Entity:{OnGround:1b}}} run tag @s add ckenja.pigrapple_player_jump
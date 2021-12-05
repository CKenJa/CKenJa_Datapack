#> ckenja.pigrapple:player/exist_hook/general
#@within ckenja.pigrapple:player/ride/general

execute if entity @s[tag=ckenja.pigrapple_player_have] run function ckenja.pigrapple:player/exist_hook/have

#モードが切り替わったらoperation/jet内で#tmp_jetを0にする
execute if data storage ckj04: fetch_entitydata{Tags:["ckenja.pigrapple_player_jet"]} run function ckenja.pigrapple:operation/jet/general
execute unless data storage ckj04: fetch_entitydata{Tags:["ckenja.pigrapple_player_jet"]} run function ckenja.pigrapple:operation/swing/

#リードを表示する
execute as @e[tag=ckenja.pigrapple_hook] if score @s ckj_pig_hook_id = #tmp_id ckj04.data facing entity @s feet run function ckenja.pigrapple:behavior/chain

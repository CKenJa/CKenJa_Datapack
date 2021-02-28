scoreboard players operation #tmp_id ckj03_data = @s ckj03_id
execute as @e[type=pig,tag=ckenja_pig_hook_pig,tag=!ckenja_pig_hook_pig_ride] if score @s ckj_pig_hook_id = #tmp_id ckj03_data run function ckenja_pig_hook:pig/kill
summon pig ~ ~ ~ {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Saddle:1b,Tags:["ckenja_pig_hook_pig","ckenja_pig_hook_pig_initial"],Attributes:[{Name:"generic.movement_speed",Base:1}]}
execute as @e[type=pig,distance=..16] run function ckenja_pig_hook:pig/init
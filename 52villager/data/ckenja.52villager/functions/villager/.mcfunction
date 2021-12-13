#> ckenja.52villager:villager/
#
#
#
# @within function ckenja.52villager:singularity/

execute positioned as @s facing entity @e[tag=ckenja.52villager.singularity,sort=nearest,limit=1] feet as @e[tag=ckenja.52villager.marker] run function ckenja.52villager:marker2
execute store result score #Pos.x ckenja.52village run data get storage ckenja.52villager: Pos[0] 10000
execute store result score #Pos.y ckenja.52village run data get storage ckenja.52villager: Pos[1] 10000
execute store result score #Pos.z ckenja.52village run data get storage ckenja.52villager: Pos[2] 10000
scoreboard players set #-1 ckenja.52village 2
data modify storage ckenja.52villager: Motion set from entity @s Motion
execute store result score #Motion.x ckenja.52village run data get storage ckenja.52villager: Motion[0] 10000
execute store result score #Motion.y ckenja.52village run data get storage ckenja.52villager: Motion[1] 10000
execute store result score #Motion.z ckenja.52village run data get storage ckenja.52villager: Motion[2] 10000
execute if entity @s[tag=!ckenja.52villager.end] run function ckenja.52villager:villager/0
scoreboard players operation #Motion.x ckenja.52village += #Pos.x ckenja.52village
scoreboard players operation #Motion.y ckenja.52village += #Pos.y ckenja.52village
scoreboard players operation #Motion.z ckenja.52village += #Pos.z ckenja.52village

scoreboard players operation #Motion.x ckenja.52village *= #-1 ckenja.52village
scoreboard players operation #Motion.y ckenja.52village *= #-1 ckenja.52village
scoreboard players operation #Motion.z ckenja.52village *= #-1 ckenja.52village
execute store result storage ckenja.52villager: Result[0] double 0.0001 run scoreboard players get #Motion.x ckenja.52village
execute store result storage ckenja.52villager: Result[1] double 0.0001 run scoreboard players get #Motion.y ckenja.52village
execute store result storage ckenja.52villager: Result[2] double 0.0001 run scoreboard players get #Motion.z ckenja.52village
data modify entity @s Motion set from storage ckenja.52villager: Result

data modify entity @s Motion[1] set value 0
tag @s add ckenja.52villager.end

#execute positioned as @s run particle heart ~ ~ ~
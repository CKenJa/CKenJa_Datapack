#> ckenja.52villager:villager/init
#
#
#
# @within function ckenja.52villager:singularity/

# Pos取得
execute positioned as @s facing entity @e[tag=ckenja.52villager.singularity,sort=nearest,limit=1] feet as @e[tag=ckenja.52villager.marker] run function ckenja.52villager:marker
execute store result score #Pos.x ckenja.52village run data get storage ckenja.52villager: Pos[0] 10000
execute store result score #Pos.y ckenja.52village run data get storage ckenja.52villager: Pos[1] 10000
execute store result score #Pos.z ckenja.52village run data get storage ckenja.52villager: Pos[2] 10000
data modify storage ckenja.52villager: Motion set from entity @s Motion
execute store result score #Motion.x ckenja.52village run data get storage ckenja.52villager: Motion[0] 10000
execute store result score #Motion.y ckenja.52village run data get storage ckenja.52villager: Motion[1] 10000
execute store result score #Motion.z ckenja.52village run data get storage ckenja.52villager: Motion[2] 10000
scoreboard players operation #Motion.x ckenja.52village += #Pos.x ckenja.52village
scoreboard players operation #Motion.y ckenja.52village += #Pos.y ckenja.52village
scoreboard players operation #Motion.z ckenja.52village += #Pos.z ckenja.52village
execute store result storage ckenja.52villager: Result[0] double 0.00005 run scoreboard players get #Motion.x ckenja.52village
execute store result storage ckenja.52villager: Result[1] double 0.00005 run scoreboard players get #Motion.y ckenja.52village
execute store result storage ckenja.52villager: Result[2] double 0.00005 run scoreboard players get #Motion.z ckenja.52village
data modify entity @s Motion set from storage ckenja.52villager: Result
execute at @s if entity @e[tag=ckenja.52villager.singularity,distance=..1,sort=nearest,limit=1] run tag @s add ckenja.52villager.villager
execute at @s if entity @e[tag=ckenja.52villager.singularity,distance=..1,sort=nearest,limit=1] run effect give @s wither 1 1 true
execute at @s if entity @e[tag=ckenja.52villager.singularity,distance=..1,sort=nearest,limit=1] run playsound minecraft:entity.villager.death master @a ~ ~ ~ 100 1
#execute positioned as @s run particle heart ~ ~ ~
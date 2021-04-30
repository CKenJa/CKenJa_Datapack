execute store result score @s cw_poser_dur run data get entity @s ArmorItems[0].tag.stack_dur[1]
data modify entity @s ArmorItems[0].tag.stack_dur append from entity @s ArmorItems[0].tag.stack_dur[1]
data remove entity @s ArmorItems[0].tag.stack_dur[1]

data modify entity @s Pose set from entity @s ArmorItems[0].tag.stack_frames[1]
data modify entity @s ArmorItems[0].tag.stack_frames append from entity @s ArmorItems[0].tag.stack_frames[1]
data remove entity @s ArmorItems[0].tag.stack_frames[1]

scoreboard players add @s cw_poser_ani 1
execute store result score #max cw_poser_ani run data get entity @s ArmorItems[0].tag.stack_frames
scoreboard players remove #max cw_poser_ani 1
execute if score @s cw_poser_ani = #max cw_poser_ani run function cw_poser:animate/cycle_end
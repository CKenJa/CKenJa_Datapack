execute store result score #frames cw_poser_ani run data get entity @s ArmorItems[0].tag.ani_frames
function cw_poser:animate/get_dur_selected

data modify entity @s ArmorItems[0].tag.stack_frames set from entity @s ArmorItems[0].tag.ani_frames
data modify entity @s ArmorItems[0].tag.stack_dur set from entity @s ArmorItems[0].tag.dur_frames

scoreboard players set @s cw_poser_ani 0
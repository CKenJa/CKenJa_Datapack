execute unless data entity @s ArmorItems[0].id run replaceitem entity @s armor.feet leather_boots
data modify entity @s ArmorItems[0].tag.ani_frames[] set value {}
data modify entity @s ArmorItems[0].tag.dur_frames[] set value 0

say hi @s
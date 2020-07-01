
execute as @s[tag=HBC_Start] run data modify entity @s ArmorItems[0].tag.MotionX set from entity @s Motion[0]
execute as @s[tag=HBC_Start] run data modify entity @s ArmorItems[0].tag.MotionY set from entity @s Motion[1]
execute as @s[tag=HBC_Start] run data modify entity @s ArmorItems[0].tag.MotionZ set from entity @s Motion[2]

tag @s add HBC_Start

execute as @s run function throwing_weapons:move

execute as @s[tag=WHB0,tag=HBC_Start] run data modify entity @s ArmorItems[0].tag.FirstMotionX set from entity @s Motion[0]
execute as @s[tag=WHB0,tag=HBC_Start] run data modify entity @s ArmorItems[0].tag.FirstMotionY set from entity @s Motion[1]
execute as @s[tag=WHB0,tag=HBC_Start] run data modify entity @s ArmorItems[0].tag.FirstMotionZ set from entity @s Motion[2]

tag @s[tag=WHB0,tag=HBC_Start] remove WHB0

#最初のMotionが0でなければHit_Wallタグ付与
#X
execute as @s[nbt={ArmorItems:[{tag:{MotionX:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionX:0.0d}},{},{},{}]}] run tag @s add Hit_Wall
#Y
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.0784000015258789d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:0.0d}},{},{},{}]}] run tag @s add Hit_Wall
#Y(水中の地面に撃つと-0.005なる数値が出るので)
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.005d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:-0.005d}},{},{},{}]}] run tag @s add Hit_Wall
#Z
execute as @s[nbt={ArmorItems:[{tag:{MotionZ:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionZ:0.0d}},{},{},{}]}] run tag @s add Hit_Wall



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
execute as @s[nbt={ArmorItems:[{tag:{MotionX:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionX:0.0d}},{},{},{}]}] run tag @s add Hit_Wall_X
execute as @s[nbt={ArmorItems:[{tag:{MotionX:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionX:0.0d}},{},{},{}]}] run data merge entity @s {NoGravity:1b}
execute as @s[nbt={ArmorItems:[{tag:{MotionX:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionX:0.0d}},{},{},{}]}] store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute as @s[tag=Hit_Wall_X,nbt=!{ArmorItems:[{tag:{MotionX:0.0d}},{},{},{}]},nbt={NoGravity:1b}] run data merge entity @s {NoGravity:0b}
tag @s[tag=Hit_Wall_X,nbt=!{NoGravity:1b}] remove Hit_Wall_X

#Y
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.0784000015258789d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:0.0d}},{},{},{}]}] run tag @s add Hit_Wall
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.0784000015258789d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:0.0d}},{},{},{}]}] run tag @s add Hit_Wall_Y
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.0784000015258789d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:0.0d}},{},{},{}]}] run data merge entity @s {NoGravity:1b}
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.0784000015258789d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:0.0d}},{},{},{}]}] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute as @s[tag=Hit_Wall_Y,nbt=!{ArmorItems:[{tag:{MotionY:-0.0784000015258789d}},{},{},{}]},nbt={NoGravity:1b}] run data merge entity @s {NoGravity:0b}
tag @s[tag=Hit_Wall_Y,nbt=!{NoGravity:1b}] remove Hit_Wall_Y

#Y(水中の地面に撃つと-0.005なる数値が出るので)
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.005d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:-0.005d}},{},{},{}]}] run tag @s add Hit_Wall
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.005d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:-0.005d}},{},{},{}]}] run tag @s add Hit_Wall_Y_Water
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.005d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:-0.005d}},{},{},{}]}] run data merge entity @s {NoGravity:1b}
execute as @s[nbt={ArmorItems:[{tag:{MotionY:-0.005d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionY:-0.005d}},{},{},{}]}] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
execute as @s[tag=Hit_Wall_Y_Water,nbt=!{ArmorItems:[{tag:{MotionY:-0.005d}},{},{},{}]},nbt={NoGravity:1b}] run data merge entity @s {NoGravity:0b}
tag @s[tag=Hit_Wall_Y_Water,nbt=!{NoGravity:1b}] remove Hit_Wall_Y_Water

#Z
execute as @s[nbt={ArmorItems:[{tag:{MotionZ:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionZ:0.0d}},{},{},{}]}] run tag @s add Hit_Wall
execute as @s[nbt={ArmorItems:[{tag:{MotionZ:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionZ:0.0d}},{},{},{}]}] run tag @s add Hit_Wall_Z
execute as @s[nbt={ArmorItems:[{tag:{MotionZ:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionZ:0.0d}},{},{},{}]}] run data merge entity @s {NoGravity:1b}
execute as @s[nbt={ArmorItems:[{tag:{MotionZ:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionZ:0.0d}},{},{},{}]}] store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
execute as @s[nbt={ArmorItems:[{tag:{MotionZ:0.0d}},{},{},{}]},nbt=!{ArmorItems:[{tag:{FirstMotionZ:0.0d}},{},{},{}]}] at @s run tp @s ~ ~ ~ ~180 ~
execute as @s[tag=Hit_Wall_Z,nbt=!{ArmorItems:[{tag:{MotionZ:0.0d}},{},{},{}]},nbt={NoGravity:1b}] run data merge entity @s {NoGravity:0b}
tag @s[tag=Hit_Wall_Z,nbt=!{NoGravity:1b}] remove Hit_Wall_Z
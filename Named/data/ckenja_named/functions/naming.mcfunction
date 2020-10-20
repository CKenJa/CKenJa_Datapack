setblock ~ ~ ~ minecraft:oak_sign{Text1:'[{"storage":"ckenja_named:","nbt":"CustomName[0]"},{"storage":"ckenja_named:","nbt":"CustomName[1]"},{"storage":"ckenja_named:","nbt":"CustomName[2]"}]'} replace
data modify entity @s CustomName set from block ~ ~ ~ Text1
setblock ~ ~ ~ air
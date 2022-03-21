#> ckenja.sword_bow:arrow/_
#
#
#
# @within function ckenja.sword_bow:tick

execute if entity @s[tag=!ckenja.sword_bow.processed] run function ckenja.sword_bow:arrow/init
execute if entity @s[tag=ckenja.sword_bow.processed] run function ckenja.sword_bow:arrow/main

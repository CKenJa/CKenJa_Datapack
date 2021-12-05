#> ckenja.grapple:true_tick
#
#
#
# @within function ckenja.grapple:note

execute as @p if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick"} if predicate ckenja.grapple:ride run function ckenja.grapple:tick
execute as @p if data entity @s SelectedItem{id:"minecraft:stick"} if predicate ckenja.grapple:ride run function ckenja.grapple:tick
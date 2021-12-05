data modify entity @s Pos set from storage ckenja.grapple: tmp.Pos
scoreboard players operation #tmp.length ckenja.grapple = $length ckenja.grapple
execute facing entity @s feet run function ckenja.grapple:marker/loop
data modify storage ckenja.grapple: tmp.Pos set from entity @s Pos
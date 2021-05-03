tag @s remove ckenja.pigmin.thrown
execute if entity @e[type=hoglin,distance=..16] run function ckenja.pigmin:entity/work/attack
execute unless entity @e[type=hoglin,distance=..16]
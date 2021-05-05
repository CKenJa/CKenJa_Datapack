tag @s remove ckenja.pigmin.thrown
execute at @s if entity @e[type=hoglin,distance=..16,sort=nearest] run function ckenja.pigmin:entity/work/attack
execute at @s unless entity @e[type=hoglin,distance=..16,sort=nearest]
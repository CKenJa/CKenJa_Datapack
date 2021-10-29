data modify entity @s Pos set from storage ckenja.grapple tmp.Pos
scoreboard players set #hook.if ckenja.grapple 0
execute as @e[tag=ckenja.grapple.hook] run function ckenja.grapple:hook/
#0なら豚をtp(降りないか要検証)させてくる、1なら豚にpos代入

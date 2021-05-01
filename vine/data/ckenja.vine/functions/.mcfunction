#AI.vexは捕まっていないプレイヤーについていき、木を召喚する
execute if entity @a as @e[tag=ckenja.vine.vex.ai] at @s run function ckenja.vine:vex/ai/
#アマスタ君は一定時間でブロックに変わる
execute as @e[tag=ckenja.vine.wood] at @s run function ckenja.vine:wood/
#捕まったプレイヤーには鈍足付けて、ツタが巻き付いた後、上にテレポートする。
execute if entity @a[tag=ckenja.vine.restrained] as @a[tag=ckenja.vine.restrained] at @s run function ckenja.vine:player/
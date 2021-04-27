#移動時に実行するやつ
    #ないです。
#攻撃に切り替え
    execute if score @s ckenja_chromatic matches 4 run attribute @s generic.movement_speed base set 0
#攻撃時に実行するやつ
    execute if score @s ckenja_chromatic matches 4..7 run particle crit ~ ~ ~ 0 0 0 0 1 normal
    execute if score @s ckenja_chromatic matches 6 positioned ^ ^ ^1 run kill @e[type=zombie,distance=..2]
#移動に切り替え
    execute if score @s ckenja_chromatic matches 7 run attribute @s generic.movement_speed base set 0.3
#ループするやつ
    scoreboard players add @s ckenja_chromatic 1
    execute if score @s ckenja_chromatic matches 8 run scoreboard players set @s ckenja_chromatic 0
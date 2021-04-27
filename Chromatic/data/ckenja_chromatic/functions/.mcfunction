#移動時に実行するやつ
    #ないです。playsound block.anvil.place master @p ~ ~ ~ 0.3
#攻撃に切り替え
    execute if score @s ckenja_chromatic matches 7 run attribute @s generic.movement_speed base set 0
    execute if score @s ckenja_chromatic matches 7 at @s run playsound block.anvil.place master @p ~ ~ ~ 0.3 0.5
#攻撃時に実行するやつ
    execute if score @s ckenja_chromatic matches 7..15 at @s anchored eyes run particle crit ^ ^ ^3 0 0 0 0 1 normal
    execute if score @s ckenja_chromatic matches 12 at @s anchored eyes positioned ^ ^ ^3 run kill @e[type=zombie,distance=..3]
#移動に切り替え
    execute if score @s ckenja_chromatic matches 15 run attribute @s generic.movement_speed base set 0.3
    execute if score @s ckenja_chromatic matches 15 at @s run playsound block.anvil.place master @p ~ ~ ~ 0.3
#ループするやつ
    scoreboard players add @s ckenja_chromatic 1
    execute if score @s ckenja_chromatic matches 16 run scoreboard players set @s ckenja_chromatic 0
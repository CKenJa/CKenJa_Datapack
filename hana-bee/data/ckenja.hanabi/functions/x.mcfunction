function ckenja.hanabi:move.x
scoreboard players remove $tmp.x ckenja.hanabi 1
execute if score $tmp.x ckenja.hanabi matches 0.. positioned ~-1 ~ ~ run function ckenja.hanabi:x
function ckenja.hanabi:x
scoreboard players operation $tmp.x ckenja.hanabi = $xl ckenja.hanabi
scoreboard players remove $tmp.z ckenja.hanabi 1
execute if score $tmp.z ckenja.hanabi matches 0.. positioned ~ ~ ~-1 run function ckenja.hanabi:z
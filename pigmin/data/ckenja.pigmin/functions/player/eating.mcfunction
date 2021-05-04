scoreboard players add #timer ckenja.pigmin 1
execute if score #timer ckenja.pigmin matches 20 run function ckenja.pigmin:player/eated
execute anchored eyes run particle item porkchop ^ ^ ^1 0.1 0.1 0.1 0.2 2 normal
execute if score #timer ckenja.pigmin matches 1 run playsound entity.generic.eat master @p
execute if score #timer ckenja.pigmin matches 6 run playsound entity.generic.eat master @p
execute if score #timer ckenja.pigmin matches 11 run playsound entity.generic.eat master @p
execute if score #timer ckenja.pigmin matches 16 run playsound entity.generic.eat master @p
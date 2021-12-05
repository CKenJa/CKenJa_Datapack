clear @s minecraft:bucket
summon item ~ ~ ~ {Item:{id:"minecraft:bucket",Count:1b,tag:{display:{Name:'{"text":"Bit Bucket","italic":false}'},Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}
advancement revoke @s only ckenja_bit:bit_bucket
recipe take @s ckenja_bit:bit_bucket
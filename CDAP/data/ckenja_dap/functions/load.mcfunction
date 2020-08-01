tellraw @a {"text":"CKenJa's test datapack loaded","color":"red"}
scoreboard objectives add ckenja_dap dummy
scoreboard objectives add ckenja_dap_x dummy
scoreboard objectives add ckenja_dap_y dummy
scoreboard objectives add ckenja_dap_0 dummy
scoreboard objectives add ckenja_dap_1 dummy

scoreboard players set #sensitivity ckenja_dap_x 10
scoreboard players set #sensitivity ckenja_dap_y 10

scoreboard players set @s ckenja_dap -1
scoreboard players operation #sensitivity ckenja_dap_x = #-sensitivity ckenja_dap_x
scoreboard players operation #-sensitivity ckenja_dap_x *= #- ckenja_dap
scoreboard players operation #sensitivity ckenja_dap_y = #-sensitivity ckenja_dap_y
scoreboard players operation #-sensitivity ckenja_dap_y *= #- ckenja_dap

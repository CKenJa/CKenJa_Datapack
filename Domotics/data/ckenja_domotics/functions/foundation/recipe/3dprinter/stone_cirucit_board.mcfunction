execute store result score #wm_slot ckj01_data run data get storage ckenja_domotics:working_memory Items.[{Slot:1b}].Count
scoreboard players remove #wm_slot ckj01_data 1
execute store result block ~ ~ ~ Items.[{Slot:1b}].Count byte 1 run scoreboard players get #wm_slot ckj01_data
execute if score @s cw_poser_wheel matches 31 run data modify storage cw_poser Display append value '[{"text":"⫷⫷","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cw_poser:select/r_left"}},{"text":"        "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 31"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 0"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 1"}},{"text":"        "},{"text":"⫸⫸","color":"dark_green","clickEvent":{"action":"run_command","value":"/function cw_poser:select/r_right"}}]'
execute if score @s cw_poser_wheel matches 0 run data modify storage cw_poser Display append value '[{"text":"⫷⫷","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cw_poser:select/r_left"}},{"text":"        "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 31"}},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 0"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 1"}},{"text":"        "},{"text":"⫸⫸","color":"dark_green","clickEvent":{"action":"run_command","value":"/function cw_poser:select/r_right"}}]'
execute if score @s cw_poser_wheel matches 1 run data modify storage cw_poser Display append value '[{"text":"⫷⫷","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cw_poser:select/r_left"}},{"text":"        "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 31"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 0"}},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 1"}},{"text":"        "},{"text":"⫸⫸","color":"dark_green","clickEvent":{"action":"run_command","value":"/function cw_poser:select/r_right"}}]'
execute unless score @s cw_poser_wheel matches 31 unless score @s cw_poser_wheel matches 0..1 run data modify storage cw_poser Display append value '[{"text":"⫷⫷","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cw_poser:select/r_left"}},{"text":"        "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 31"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 0"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 1"}},{"text":"        "},{"text":"⫸⫸","color":"dark_green","clickEvent":{"action":"run_command","value":"/function cw_poser:select/r_right"}}]'
############################################################################################

execute if score @s cw_poser_wheel matches 29 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 29"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 30"}},{"text":"       ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 2"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 3"}}]'
execute if score @s cw_poser_wheel matches 30 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 29"}},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 30"}},{"text":"       ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 2"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 3"}}]'
execute if score @s cw_poser_wheel matches 2 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 29"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 30"}},{"text":"       ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 2"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 3"}}]'
execute if score @s cw_poser_wheel matches 3 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 29"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 30"}},{"text":"       ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 2"}},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 3"}}]'
execute unless score @s cw_poser_wheel matches 29..30 unless score @s cw_poser_wheel matches 2..3 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 29"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 30"}},{"text":"       ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 2"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 3"}}]'

###########################################################################################################
execute if score @s cw_poser_wheel matches 28 run data modify storage cw_poser Display append value '[{"text":"    "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 28"}},{"text":"                ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 4"}}]'
execute if score @s cw_poser_wheel matches 4 run data modify storage cw_poser Display append value '[{"text":"    "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 28"}},{"text":"                ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 4"}}]'
execute unless score @s cw_poser_wheel matches 28 unless score @s cw_poser_wheel matches 4 run data modify storage cw_poser Display append value '[{"text":"    "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 28"}},{"text":"                ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 4"}}]'
###########################################################################################################
execute if score @s cw_poser_wheel matches 27 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 27"}},{"text":"                    ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 5"}}]'
execute if score @s cw_poser_wheel matches 5 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 27"}},{"text":"                    ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 5"}}]'
execute unless score @s cw_poser_wheel matches 27 unless score @s cw_poser_wheel matches 5 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 27"}},{"text":"                    ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 5"}}]'
###########################################################################################################
execute if score @s cw_poser_wheel matches 26 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 26"}},{"text":"                    ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 6"}}]'
execute if score @s cw_poser_wheel matches 6 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 26"}},{"text":"                    ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 6"}}]'
execute unless score @s cw_poser_wheel matches 26 unless score @s cw_poser_wheel matches 6 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 26"}},{"text":"                    ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 6"}}]'
###########################################################################################################
execute if score @s[tag=cw_poser_rx] cw_poser_wheel matches 25 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 25"}},{"text":"          "},{"text":"ⓇⓍ","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rx"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 7"}}]'
execute if score @s[tag=cw_poser_rx] cw_poser_wheel matches 7 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 25"}},{"text":"          "},{"text":"ⓇⓍ","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rx"}},{"text":"          ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 7"}}]'
execute unless score @s[tag=cw_poser_rx] cw_poser_wheel matches 25 unless score @s cw_poser_wheel matches 7 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 25"}},{"text":"          "},{"text":"ⓇⓍ","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rx"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 7"}}]'
execute if score @s[tag=!cw_poser_rx] cw_poser_wheel matches 25 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 25"}},{"text":"          "},{"text":"ⓇⓍ","color":"gray","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rx"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 7"}}]'
execute if score @s[tag=!cw_poser_rx] cw_poser_wheel matches 7 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 25"}},{"text":"          "},{"text":"ⓇⓍ","color":"gray","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rx"}},{"text":"          ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 7"}}]'
execute unless score @s[tag=!cw_poser_rx] cw_poser_wheel matches 25 unless score @s cw_poser_wheel matches 7 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 25"}},{"text":"          "},{"text":"ⓇⓍ","color":"gray","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rx"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 7"}}]'
###########################################################################################################
execute if score @s[tag=cw_poser_ry] cw_poser_wheel matches 24 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 24"}},{"text":"          "},{"text":"ⓇⓎ","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_poser:select/ry"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 8"}}]'
execute if score @s[tag=cw_poser_ry] cw_poser_wheel matches 8 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 24"}},{"text":"          "},{"text":"ⓇⓎ","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_poser:select/ry"}},{"text":"          ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 8"}}]'
execute unless score @s[tag=cw_poser_ry] cw_poser_wheel matches 24 unless score @s cw_poser_wheel matches 8 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 24"}},{"text":"          "},{"text":"ⓇⓎ","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_poser:select/ry"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 8"}}]'
execute if score @s[tag=!cw_poser_ry] cw_poser_wheel matches 24 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 24"}},{"text":"          "},{"text":"ⓇⓎ","color":"gray","clickEvent":{"action":"run_command","value":"/function cw_poser:select/ry"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 8"}}]'
execute if score @s[tag=!cw_poser_ry] cw_poser_wheel matches 8 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 24"}},{"text":"          "},{"text":"ⓇⓎ","color":"gray","clickEvent":{"action":"run_command","value":"/function cw_poser:select/ry"}},{"text":"          ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 8"}}]'
execute unless score @s[tag=!cw_poser_ry] cw_poser_wheel matches 24 unless score @s cw_poser_wheel matches 8 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 24"}},{"text":"          "},{"text":"ⓇⓎ","color":"gray","clickEvent":{"action":"run_command","value":"/function cw_poser:select/ry"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 8"}}]'
###########################################################################################################
execute if score @s[tag=cw_poser_rz] cw_poser_wheel matches 23 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 23"}},{"text":"          "},{"text":"ⓇⓏ","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rz"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 9"}}]'
execute if score @s[tag=cw_poser_rz] cw_poser_wheel matches 9 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 23"}},{"text":"          "},{"text":"ⓇⓏ","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rz"}},{"text":"          ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 9"}}]'
execute unless score @s[tag=cw_poser_rz] cw_poser_wheel matches 23 unless score @s cw_poser_wheel matches 9 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 23"}},{"text":"          "},{"text":"ⓇⓏ","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rz"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 9"}}]'
execute if score @s[tag=!cw_poser_rz] cw_poser_wheel matches 23 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 23"}},{"text":"          "},{"text":"ⓇⓏ","color":"gray","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rz"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 9"}}]'
execute if score @s[tag=!cw_poser_rz] cw_poser_wheel matches 9 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 23"}},{"text":"          "},{"text":"ⓇⓏ","color":"gray","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rz"}},{"text":"          ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 9"}}]'
execute unless score @s[tag=!cw_poser_rz] cw_poser_wheel matches 23 unless score @s cw_poser_wheel matches 9 run data modify storage cw_poser Display append value '[{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 23"}},{"text":"          "},{"text":"ⓇⓏ","color":"gray","clickEvent":{"action":"run_command","value":"/function cw_poser:select/rz"}},{"text":"          ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 9"}}]'
###########################################################################################################
execute if score @s cw_poser_wheel matches 22 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 22"}},{"text":"                    ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 10"}}]'
execute if score @s cw_poser_wheel matches 10 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 22"}},{"text":"                    ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 10"}}]'
execute unless score @s cw_poser_wheel matches 22 unless score @s cw_poser_wheel matches 10 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 22"}},{"text":"                    ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 10"}}]'
###########################################################################################################
execute if score @s cw_poser_wheel matches 21 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 21"}},{"text":"                    ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 11"}}]'
execute if score @s cw_poser_wheel matches 11 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 21"}},{"text":"                    ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 11"}}]'
execute unless score @s cw_poser_wheel matches 21 unless score @s cw_poser_wheel matches 11 run data modify storage cw_poser Display append value '[{"text":"  "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 21"}},{"text":"                    ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 11"}}]'
###########################################################################################################
execute if score @s cw_poser_wheel matches 20 run data modify storage cw_poser Display append value '[{"text":"    "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 20"}},{"text":"                ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 12"}}]'
execute if score @s cw_poser_wheel matches 12 run data modify storage cw_poser Display append value '[{"text":"    "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 20"}},{"text":"                ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 12"}}]'
execute unless score @s cw_poser_wheel matches 20 unless score @s cw_poser_wheel matches 12 run data modify storage cw_poser Display append value '[{"text":"    "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 20"}},{"text":"                ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 12"}}]'
###########################################################################################################

execute if score @s cw_poser_wheel matches 19 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 19"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 18"}},{"text":"       ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 14"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 13"}}]'
execute if score @s cw_poser_wheel matches 18 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 19"}},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 18"}},{"text":"       ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 14"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 13"}}]'
execute if score @s cw_poser_wheel matches 14 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 19"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 18"}},{"text":"       ."},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 14"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 13"}}]'
execute if score @s cw_poser_wheel matches 13 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 19"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 18"}},{"text":"       ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 14"}},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 13"}}]'
execute unless score @s cw_poser_wheel matches 18..19 unless score @s cw_poser_wheel matches 13..14 run data modify storage cw_poser Display append value '[{"text":"      "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 19"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 18"}},{"text":"       ."},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 14"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 13"}}]'

###########################################################################################################
execute if score @s cw_poser_wheel matches 17 run data modify storage cw_poser Display append value '[{"text":"           "},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 17"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 16"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 15"}}]'
execute if score @s cw_poser_wheel matches 16 run data modify storage cw_poser Display append value '[{"text":"           "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 17"}},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 16"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 15"}}]'
execute if score @s cw_poser_wheel matches 15 run data modify storage cw_poser Display append value '[{"text":"           "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 17"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 16"}},{"text":"▓","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 15"}}]'
execute unless score @s cw_poser_wheel matches 15..17 run data modify storage cw_poser Display append value '[{"text":"           "},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 17"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 16"}},{"text":"▓","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players set @s cw_poser_wheel 15"}}]'
############################################################################################
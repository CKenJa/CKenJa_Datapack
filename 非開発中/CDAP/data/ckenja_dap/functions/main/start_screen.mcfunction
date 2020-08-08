scoreboard players add @s ckenja_dap 1
execute if score @s ckenja_dap matches 110 run function ckenja_dap:main/start_screen/next_screen

#軽量化のための分岐「y=272/x+x,0<y,yの最小値=16」
execute if score @s ckenja_dap matches 1..17 run function ckenja_dap:main/start_screen/1
execute if score @s ckenja_dap matches 18..34 run function ckenja_dap:main/start_screen/2
execute if score @s ckenja_dap matches 35..51 run function ckenja_dap:main/start_screen/3
execute if score @s ckenja_dap matches 52..68 run function ckenja_dap:main/start_screen/4
execute if score @s ckenja_dap matches 69..85 run function ckenja_dap:main/start_screen/5
execute if score @s ckenja_dap matches 86..102 run function ckenja_dap:main/start_screen/6
execute if score @s ckenja_dap matches 103..119 run function ckenja_dap:main/start_screen/7
#execute if score @s ckenja_dap matches 120..136 run function ckenja_dap:main/start_screen/8
#execute if score @s ckenja_dap matches 137..153 run function ckenja_dap:main/start_screen/9
#execute if score @s ckenja_dap matches 154..170 run function ckenja_dap:main/start_screen/10
#execute if score @s ckenja_dap matches 171..187 run function ckenja_dap:main/start_screen/11
#execute if score @s ckenja_dap matches 188..204 run function ckenja_dap:main/start_screen/12
#execute if score @s ckenja_dap matches 205..221 run function ckenja_dap:main/start_screen/13
#execute if score @s ckenja_dap matches 222..238 run function ckenja_dap:main/start_screen/14
#execute if score @s ckenja_dap matches 239..255 run function ckenja_dap:main/start_screen/15
#execute if score @s ckenja_dap matches 256..272 run function ckenja_dap:main/start_screen/16
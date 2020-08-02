execute if entity @s[tag=!ckenja_dap_using] run function ckenja_dap:main/start
execute if entity @s[tag=ckenja_dap_using] run function ckenja_dap:main/using
execute if entity @s[tag=ckenja_dap_start_screen] run function ckenja_dap:main/start_screen
#execute if entity @s[tag=ckenja_dap_login_screen] run function ckenja_dap:main/login_screen
execute if entity @s[tag=ckenja_dap_home_screen] run function ckenja_dap:main/home_screen
execute if entity @s[tag=ckenja_dap_using_app] run function #ckenja_dap:app
execute if entity @s[tag=ckenja_dap_show_cursor] run function ckenja_dap:main/show_cursor
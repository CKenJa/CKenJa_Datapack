execute if entity @s[tag=ckenja_dap_home_screen] run tag @s remove ckenja_dap_home_screen
title @s title {"text":"\uEA04","font":"ckenja:dap"}
execute if entity @s[tag=ckenja_dap_music] run title @s title {"text":"\uEA05","font":"ckenja:dap"}
execute if entity @s[tag=ckenja_dap_music] run function kirameki:play
execute if entity @s[tag=ckenja_dap_music2] run playsound music_disc.pigstep master @p



tag @s add ckenja_dap_music
execute if entity @s[tag=ckenja_dap_music] run tag @s add ckenja_dap_music2
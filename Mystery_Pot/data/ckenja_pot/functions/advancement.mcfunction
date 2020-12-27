summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[],Tags:["ckenja_pot_aec"]}
data modify entity @e[type=area_effect_cloud,limit=1,tag=ckenja_pot_aec] Effects set from entity @s SelectedItem.tag.ckenja_pot.Effects
advancement revoke @s only ckenja_pot:eat_pot
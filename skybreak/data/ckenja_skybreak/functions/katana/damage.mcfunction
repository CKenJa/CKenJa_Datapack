summon area_effect_cloud ~ ~ ~ {Duration:6,Effects:[{Id:25b,Amplifier:0b,Duration:5,ShowParticles:0b}]}
execute if entity @s[type=!#ckj01:undead,type=!witch] run summon area_effect_cloud ~ ~ ~ {Duration:6,Effects:[{Id:6b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
execute if entity @s[type=#ckj01:undead] run summon area_effect_cloud ~ ~ ~ {Duration:6,Effects:[{Id:6b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
execute if entity @s[type=witch] run summon area_effect_cloud ~ ~ ~ {Duration:6,Effects:[{Id:6b,Amplifier:4b,Duration:1,ShowParticles:0b}]}
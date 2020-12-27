execute if predicate ckenja_pot:kelp run data modify storage ckenja_pot: Effects append value {Id:13,Amplifier:0b,Duration:12000,ShowParticles:0b}
execute if predicate ckenja_pot:chikin run data modify storage ckenja_pot: Effects append value {Id:8,Amplifier:0b,Duration:12000,ShowParticles:0b}
execute if predicate ckenja_pot:luckey run data modify storage ckenja_pot: Effects append value {Id:26,Amplifier:0b,Duration:12000,ShowParticles:0b}
execute if predicate ckenja_pot:apple run data modify storage ckenja_pot: Effects append value {Id:10,Amplifier:0b,Duration:12000,ShowParticles:0b}
execute if predicate ckenja_pot:bread run function ckenja_pot:ingredients/bread
execute if predicate ckenja_pot:lily_of_the_valley run function ckenja_pot:ingredients/lily_of_the_valley
execute if predicate ckenja_pot:sugar run function ckenja_pot:ingredients/sugar
execute if predicate ckenja_pot:unluckey run function ckenja_pot:ingredients/unluckey
execute if predicate ckenja_pot:chorus run function ckenja_pot:ingredients/chorus
execute if predicate ckenja_pot:powder run function ckenja_pot:ingredients/powder
execute if predicate ckenja_pot:flower run function ckenja_pot:ingredients/flower
execute if predicate ckenja_pot:cacao run function ckenja_pot:ingredients/cacao
execute if predicate ckenja_pot:melon run function ckenja_pot:ingredients/melon
execute if predicate ckenja_pot:raw run function ckenja_pot:ingredients/raw
execute if predicate ckenja_pot:magma run function ckenja_pot:ingredients/magma
execute if predicate ckenja_pot:meat run function ckenja_pot:ingredients/meat
execute if predicate ckenja_pot:fish run function ckenja_pot:ingredients/fish
execute if predicate ckenja_pot:wither run function ckenja_pot:ingredients/wither
execute if predicate ckenja_pot:blaze run function ckenja_pot:ingredients/blaze
execute if predicate ckenja_pot:ghast run function ckenja_pot:ingredients/ghast
execute if predicate ckenja_pot:pumpkin run function ckenja_pot:ingredients/pumpkin

#execute if predicate ckenja_pot:! run function ckenja_pot:ingredients/!

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.Item.tag.ckenja_pot.Effects append from storage ckenja_pot: Effects
data remove storage ckenja_pot: Effects
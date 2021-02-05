execute store result score #tmp ckenja_pot run execute if predicate ckj02:random/0.5
execute if score #tmp ckenja_pot matches 0 run data modify storage ckenja_pot: Effects append value {Id:12,Amplifier:1b,Duration:12000,ShowParticles:0b}
execute if score #tmp ckenja_pot matches 1 run data modify storage ckenja_pot: Effects append value {Id:2,Amplifier:1b,Duration:6000,ShowParticles:0b}
execute if score #tmp ckenja_pot matches 1 run data modify storage ckenja_pot: Effects append value {Id:25,Amplifier:-1b,Duration:6000,ShowParticles:0b}
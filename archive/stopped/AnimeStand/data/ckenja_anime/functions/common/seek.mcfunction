execute store result score $tmp1 ckj02_data run data get storage ckenja_anime: Tmp.List[0].time
data modify storage ckenja_anime: Tmp.Compound set from storage ckenja_anime: Tmp.List[0]
execute unless score @s ckenja_anime <= $tmp1 ckj02_data unless data storage ckenja_anime: Tmp.Compound{end:1b} run function ckenja_anime:common/rotate
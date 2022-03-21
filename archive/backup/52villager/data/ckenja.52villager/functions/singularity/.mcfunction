#https://www.youtube.com/watch?v=cYXl6pRJ9uw
## 村人への処理
#まだここだけ書いて内けど7:00な件について
#てへぴろ
execute as @e[type=villager,tag=!ckenja.52villager.villager] run function ckenja.52villager:villager/init
execute as @e[type=villager,tag=ckenja.52villager.villager] run function ckenja.52villager:villager/
execute if predicate ckenja.52villager:portal run playsound minecraft:block.portal.ambient master @a ~ ~ ~ 100 0.7

## パーティクル描画 台風
#particle large_smoke ~${x} ~-0.25 ~${y} 
#${y} 0 -${x} 0.2 0
# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAMwBmAnHAKwNwDsAtAAzWm1sAsHABwo2ggIykATPzG0ag2oKakOYAgDsAhgFsEyQGGKAAjFqwMTRh0BnJOBQB7QuohI+ggijjO4GW2ABumtiEeuAAHkgcBFCRAL6xBJakaIQ2iGIAdO5gVhAWLohRYHDY2GgwVnpiHEUY9nkQekVoVgCipeWVrQCOhEHYUADK5p7kiNRBlfEAukA_3
# 円 1
particle large_smoke ~0 ~-0.25 ~-1.8 -1.8 0 -0 0.2 0

particle large_smoke ~0.23495 ~-0.25 ~-1.7846 -1.7846 0 -0.23495 0.2 0

particle large_smoke ~0.46587 ~-0.25 ~-1.73867 -1.73867 0 -0.46587 0.2 0

particle large_smoke ~0.68883 ~-0.25 ~-1.66298 -1.66298 0 -0.68883 0.2 0

particle large_smoke ~0.9 ~-0.25 ~-1.55885 -1.55885 0 -0.9 0.2 0

particle large_smoke ~1.09577 ~-0.25 ~-1.42804 -1.42804 0 -1.09577 0.2 0

particle large_smoke ~1.27279 ~-0.25 ~-1.27279 -1.27279 0 -1.27279 0.2 0

particle large_smoke ~1.42804 ~-0.25 ~-1.09577 -1.09577 0 -1.42804 0.2 0

particle large_smoke ~1.55885 ~-0.25 ~-0.9 -0.9 0 -1.55885 0.2 0

particle large_smoke ~1.66298 ~-0.25 ~-0.68883 -0.68883 0 -1.66298 0.2 0

particle large_smoke ~1.73867 ~-0.25 ~-0.46587 -0.46587 0 -1.73867 0.2 0

particle large_smoke ~1.7846 ~-0.25 ~-0.23495 -0.23495 0 -1.7846 0.2 0

particle large_smoke ~1.8 ~-0.25 ~0 0 0 -1.8 0.2 0

particle large_smoke ~1.7846 ~-0.25 ~0.23495 0.23495 0 -1.7846 0.2 0

particle large_smoke ~1.73867 ~-0.25 ~0.46587 0.46587 0 -1.73867 0.2 0

particle large_smoke ~1.66298 ~-0.25 ~0.68883 0.68883 0 -1.66298 0.2 0

particle large_smoke ~1.55885 ~-0.25 ~0.9 0.9 0 -1.55885 0.2 0

particle large_smoke ~1.42804 ~-0.25 ~1.09577 1.09577 0 -1.42804 0.2 0

particle large_smoke ~1.27279 ~-0.25 ~1.27279 1.27279 0 -1.27279 0.2 0

particle large_smoke ~1.09577 ~-0.25 ~1.42804 1.42804 0 -1.09577 0.2 0

particle large_smoke ~0.9 ~-0.25 ~1.55885 1.55885 0 -0.9 0.2 0

particle large_smoke ~0.68883 ~-0.25 ~1.66298 1.66298 0 -0.68883 0.2 0

particle large_smoke ~0.46587 ~-0.25 ~1.73867 1.73867 0 -0.46587 0.2 0

particle large_smoke ~0.23495 ~-0.25 ~1.7846 1.7846 0 -0.23495 0.2 0

particle large_smoke ~0 ~-0.25 ~1.8 1.8 0 -0 0.2 0

particle large_smoke ~-0.23495 ~-0.25 ~1.7846 1.7846 0 0.23495 0.2 0

particle large_smoke ~-0.46587 ~-0.25 ~1.73867 1.73867 0 0.46587 0.2 0

particle large_smoke ~-0.68883 ~-0.25 ~1.66298 1.66298 0 0.68883 0.2 0

particle large_smoke ~-0.9 ~-0.25 ~1.55885 1.55885 0 0.9 0.2 0

particle large_smoke ~-1.09577 ~-0.25 ~1.42804 1.42804 0 1.09577 0.2 0

particle large_smoke ~-1.27279 ~-0.25 ~1.27279 1.27279 0 1.27279 0.2 0

particle large_smoke ~-1.42804 ~-0.25 ~1.09577 1.09577 0 1.42804 0.2 0

particle large_smoke ~-1.55885 ~-0.25 ~0.9 0.9 0 1.55885 0.2 0

particle large_smoke ~-1.66298 ~-0.25 ~0.68883 0.68883 0 1.66298 0.2 0

particle large_smoke ~-1.73867 ~-0.25 ~0.46587 0.46587 0 1.73867 0.2 0

particle large_smoke ~-1.7846 ~-0.25 ~0.23495 0.23495 0 1.7846 0.2 0

particle large_smoke ~-1.8 ~-0.25 ~0 0 0 1.8 0.2 0

particle large_smoke ~-1.7846 ~-0.25 ~-0.23495 -0.23495 0 1.7846 0.2 0

particle large_smoke ~-1.73867 ~-0.25 ~-0.46587 -0.46587 0 1.73867 0.2 0

particle large_smoke ~-1.66298 ~-0.25 ~-0.68883 -0.68883 0 1.66298 0.2 0

particle large_smoke ~-1.55885 ~-0.25 ~-0.9 -0.9 0 1.55885 0.2 0

particle large_smoke ~-1.42804 ~-0.25 ~-1.09577 -1.09577 0 1.42804 0.2 0

particle large_smoke ~-1.27279 ~-0.25 ~-1.27279 -1.27279 0 1.27279 0.2 0

particle large_smoke ~-1.09577 ~-0.25 ~-1.42804 -1.42804 0 1.09577 0.2 0

particle large_smoke ~-0.9 ~-0.25 ~-1.55885 -1.55885 0 0.9 0.2 0

particle large_smoke ~-0.68883 ~-0.25 ~-1.66298 -1.66298 0 0.68883 0.2 0

particle large_smoke ~-0.46587 ~-0.25 ~-1.73867 -1.73867 0 0.46587 0.2 0

particle large_smoke ~-0.23495 ~-0.25 ~-1.7846 -1.7846 0 0.23495 0.2 0

## 黒穴
#execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~${x} ~ ~${y} 0 0 0 0 1
# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmABwBMARgCxy0AMAjALRworPv0BsAM37sAnKVIp2AQwDszWdQCstJUunVqYAgDtpAWwTJaGONIgALbWBjSMBgM5JwKAPaEdEJP3oEUcTzgMZzAAN2lsQiNwAA8kZgIoeIBfZIJ7UjRCJ0RWADoAZgIHCDsvRASwOGxsNBgHI1ZmSoxXUogjSrQHAFEauoaegEdCCOwoAGVbf3JEQQiG1LxwaHgKdCxca2IyCkpROFY4eiVBdmZ+agK+QTN2SjhKEXpqURezSjlWQWs9QwoAMKYHBwAAErGstns+hyLncniQ1F8qACHWCiHA4Ui0TAcQqiRSaTAGSyOWYeVExVKGHKlWqtXqjWa6Ta5k6BG6fQZgxGY0m0zgs3m2EWaRWsCMqGBWwIO1mYFk9FI-FEzGolHYBVYlF49BYIlE-FO7GUtFIgqU1CNKHIugMksAYYqgrQEKGOEJuDzlJF+VFBEJYqIhPGVJIVJbE6SZbLxPLIkpleIEekDJktVkdJNgTn9RnDUY1fnSGZIYWi5aQCXraX4IgkeXm1hanxSc2iah8FUcSgFZqcaS0USCArSQUoUSyX72ihOgqQuzujGoeHe5H+QLozERINLkME8NEkkxiqFKmJ-FVXMNJBNdPtdnZ3pXuD5vlTYuC0sLOBLcVrZAbCC2z1hQBRvKI0g0NI7CCMwBQdvQwjXNISj+PcsiyKQRwFKQshGj8dr-MgTr0PO0KwsuXqIpU65ogG244nuYBhswEZHmSeTUGeNJZimjI3syxIZg+Obci+vKFu+JZzN+v6Vv+UqbLWcqgUosiUJQgi3GItBwGcAhqOwtCyHI7D8JQpDULIohmqQqikYRjqgkoZGLnCVGINQNF+puYQMcGWYsWxUakrGrDcbSybPgJd5slmompq+kkCkKslivJkqATKda7MgrBYawBwaOwmFKLqjD0DIZVnIK0jzLQTZeRoU5EWATr8K5MIeiu1G+hu9HYgFF5BYeIXHuSSgRbx0W5IJrT3vFT5iUl4xSZ+Mkij+6WrJlNbAblYAFDwrC0Dw0FNPwzyPLQ9xKPwHCCPQ9DwXhSgjkolAtU5k6uguXVLp6CKIL2fV0UugaMYFhLpGNHH8FNF58des2xZmF4JXmEmrSlX6bXJO3Vkp+3ypaBS0LcBSyDBWH6ScpD3Cgj2apc9BqtQpBKKwsi1n8Tmfb95HdR5rOg-64P+buUMHjD0YcbICN0jNt4sgt6NLYlWNFtJZZbRWBMAXtsogcgGFPRcQgyJp9P0FzHCiCdogwWVBRvfQPAFJTX0zqCoidRRgPlGVou+RDQ2htDkay7GlAK1FYkxSrcVq1yGsFtjH6pXj21VgbRNGwdBRwFZhXaT2ep8NIPj3C8Zy9tIJzMHdlCyAUHWOd7Lo2H9-s9YgQcov14uDZLw0R+xN6x5e8co4naNdOrmNp1r606-jOeKUB+fygo4HMCgBrwRw9Dc8hz1wCa9dsPwKCULpzDSF7xHOX7QtA-3tFi1uw+xFLrGjVHuQ8jhTAAmHiiMlZzWEotFOi83w4w2uWP8u0845QbEXD6shBAdhYEXPgPApAPG1CVbgl1zT8AKJ8AiYBebex+l3QWANe5eWDgNHcP9R7S0jqFQBXEQHUkilPVMCchKq3njAnkS81qZ1FAAXSAA_3
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-1.3 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.12742 ~ ~-1.29374 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.25362 ~ ~-1.27502 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.37737 ~ ~-1.24402 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.49749 ~ ~-1.20104 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.61282 ~ ~-1.1465 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.72224 ~ ~-1.08091 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.82471 ~ ~-1.00491 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.91924 ~ ~-0.91924 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.00491 ~ ~-0.82471 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.08091 ~ ~-0.72224 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.1465 ~ ~-0.61282 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.20104 ~ ~-0.49749 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.24402 ~ ~-0.37737 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.27502 ~ ~-0.25362 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.29374 ~ ~-0.12742 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.3 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.29374 ~ ~0.12742 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.27502 ~ ~0.25362 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.24402 ~ ~0.37737 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.20104 ~ ~0.49749 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.1465 ~ ~0.61282 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.08091 ~ ~0.72224 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.00491 ~ ~0.82471 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.91924 ~ ~0.91924 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.82471 ~ ~1.00491 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.72224 ~ ~1.08091 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.61282 ~ ~1.1465 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.49749 ~ ~1.20104 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.37737 ~ ~1.24402 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.25362 ~ ~1.27502 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.12742 ~ ~1.29374 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~1.3 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.12742 ~ ~1.29374 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.25362 ~ ~1.27502 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.37737 ~ ~1.24402 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.49749 ~ ~1.20104 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.61282 ~ ~1.1465 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.72224 ~ ~1.08091 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.82471 ~ ~1.00491 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.91924 ~ ~0.91924 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.00491 ~ ~0.82471 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.08091 ~ ~0.72224 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.1465 ~ ~0.61282 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.20104 ~ ~0.49749 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.24402 ~ ~0.37737 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.27502 ~ ~0.25362 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.29374 ~ ~0.12742 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.3 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.29374 ~ ~-0.12742 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.27502 ~ ~-0.25362 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.24402 ~ ~-0.37737 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.20104 ~ ~-0.49749 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.1465 ~ ~-0.61282 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.08091 ~ ~-0.72224 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.00491 ~ ~-0.82471 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.91924 ~ ~-0.91924 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.82471 ~ ~-1.00491 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.72224 ~ ~-1.08091 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.61282 ~ ~-1.1465 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.49749 ~ ~-1.20104 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.37737 ~ ~-1.24402 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.25362 ~ ~-1.27502 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.12742 ~ ~-1.29374 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-0.9 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.23294 ~ ~-0.86933 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.45 ~ ~-0.77942 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.6364 ~ ~-0.6364 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.77942 ~ ~-0.45 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.86933 ~ ~-0.23294 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.9 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.86933 ~ ~0.23294 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.77942 ~ ~0.45 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.6364 ~ ~0.6364 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.45 ~ ~0.77942 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.23294 ~ ~0.86933 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~0.9 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.23294 ~ ~0.86933 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.45 ~ ~0.77942 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.6364 ~ ~0.6364 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.77942 ~ ~0.45 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.86933 ~ ~0.23294 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.9 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.86933 ~ ~-0.23294 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.77942 ~ ~-0.45 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.6364 ~ ~-0.6364 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.45 ~ ~-0.77942 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.23294 ~ ~-0.86933 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-0.4 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.10353 ~ ~-0.38637 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.2 ~ ~-0.34641 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.28284 ~ ~-0.28284 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.34641 ~ ~-0.2 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.38637 ~ ~-0.10353 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.4 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.38637 ~ ~0.10353 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.34641 ~ ~0.2 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.28284 ~ ~0.28284 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.2 ~ ~0.34641 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.10353 ~ ~0.38637 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~0.4 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.10353 ~ ~0.38637 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.2 ~ ~0.34641 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.28284 ~ ~0.28284 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.34641 ~ ~0.2 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.38637 ~ ~0.10353 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.4 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.38637 ~ ~-0.10353 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.34641 ~ ~-0.2 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.28284 ~ ~-0.28284 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.2 ~ ~-0.34641 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.10353 ~ ~-0.38637 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-0.3 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.07765 ~ ~-0.28978 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.15 ~ ~-0.25981 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.21213 ~ ~-0.21213 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.25981 ~ ~-0.15 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.28978 ~ ~-0.07765 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.3 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.28978 ~ ~0.07765 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.25981 ~ ~0.15 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.21213 ~ ~0.21213 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.15 ~ ~0.25981 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.07765 ~ ~0.28978 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~0.3 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.07765 ~ ~0.28978 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.15 ~ ~0.25981 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.21213 ~ ~0.21213 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.25981 ~ ~0.15 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.28978 ~ ~0.07765 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.3 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.28978 ~ ~-0.07765 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.25981 ~ ~-0.15 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.21213 ~ ~-0.21213 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.15 ~ ~-0.25981 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.07765 ~ ~-0.28978 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-0.2 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.0618 ~ ~-0.19021 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.11756 ~ ~-0.1618 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.1618 ~ ~-0.11756 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.19021 ~ ~-0.0618 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.2 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.19021 ~ ~0.0618 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.1618 ~ ~0.11756 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.11756 ~ ~0.1618 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.0618 ~ ~0.19021 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~0.2 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.0618 ~ ~0.19021 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.11756 ~ ~0.1618 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.1618 ~ ~0.11756 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.19021 ~ ~0.0618 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.2 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.19021 ~ ~-0.0618 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.1618 ~ ~-0.11756 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.11756 ~ ~-0.1618 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.0618 ~ ~-0.19021 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-0.1 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.05878 ~ ~-0.0809 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.09511 ~ ~-0.0309 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.09511 ~ ~0.0309 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.05878 ~ ~0.0809 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~0.1 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.05878 ~ ~0.0809 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.09511 ~ ~0.0309 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.09511 ~ ~-0.0309 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.05878 ~ ~-0.0809 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-0.5 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.15451 ~ ~-0.47553 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.29389 ~ ~-0.40451 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.40451 ~ ~-0.29389 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.47553 ~ ~-0.15451 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.5 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.47553 ~ ~0.15451 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.40451 ~ ~0.29389 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.29389 ~ ~0.40451 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.15451 ~ ~0.47553 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~0.5 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.15451 ~ ~0.47553 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.29389 ~ ~0.40451 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.40451 ~ ~0.29389 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.47553 ~ ~0.15451 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.5 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.47553 ~ ~-0.15451 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.40451 ~ ~-0.29389 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.29389 ~ ~-0.40451 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.15451 ~ ~-0.47553 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-0.6 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.12475 ~ ~-0.58689 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.24404 ~ ~-0.54813 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.35267 ~ ~-0.48541 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.44589 ~ ~-0.40148 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.51962 ~ ~-0.3 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.57063 ~ ~-0.18541 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.59671 ~ ~-0.06272 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.59671 ~ ~0.06272 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.57063 ~ ~0.18541 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.51962 ~ ~0.3 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.44589 ~ ~0.40148 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.35267 ~ ~0.48541 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.24404 ~ ~0.54813 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.12475 ~ ~0.58689 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~0.6 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.12475 ~ ~0.58689 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.24404 ~ ~0.54813 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.35267 ~ ~0.48541 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.44589 ~ ~0.40148 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.51962 ~ ~0.3 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.57063 ~ ~0.18541 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.59671 ~ ~0.06272 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.59671 ~ ~-0.06272 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.57063 ~ ~-0.18541 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.51962 ~ ~-0.3 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.44589 ~ ~-0.40148 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.35267 ~ ~-0.48541 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.24404 ~ ~-0.54813 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.12475 ~ ~-0.58689 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-0.7 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.1095 ~ ~-0.69138 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.21631 ~ ~-0.66574 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.31779 ~ ~-0.6237 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.41145 ~ ~-0.56631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.49497 ~ ~-0.49497 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.56631 ~ ~-0.41145 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.6237 ~ ~-0.31779 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.66574 ~ ~-0.21631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.69138 ~ ~-0.1095 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.7 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.69138 ~ ~0.1095 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.66574 ~ ~0.21631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.6237 ~ ~0.31779 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.56631 ~ ~0.41145 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.49497 ~ ~0.49497 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.41145 ~ ~0.56631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.31779 ~ ~0.6237 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.21631 ~ ~0.66574 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.1095 ~ ~0.69138 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~0.7 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.1095 ~ ~0.69138 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.21631 ~ ~0.66574 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.31779 ~ ~0.6237 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.41145 ~ ~0.56631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.49497 ~ ~0.49497 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.56631 ~ ~0.41145 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.6237 ~ ~0.31779 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.66574 ~ ~0.21631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.69138 ~ ~0.1095 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.7 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.69138 ~ ~-0.1095 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.66574 ~ ~-0.21631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.6237 ~ ~-0.31779 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.56631 ~ ~-0.41145 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.49497 ~ ~-0.49497 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.41145 ~ ~-0.56631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.31779 ~ ~-0.6237 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.21631 ~ ~-0.66574 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.1095 ~ ~-0.69138 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-0.8 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~00.27 ~ ~-0.79369 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.19895 ~ ~-0.77487 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.2945 ~ ~-0.74382 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.3854 ~ ~-0.70105 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.47023 ~ ~-0.64721 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.54764 ~ ~-0.58317 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.61641 ~ ~-0.50994 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.67546 ~ ~-0.42866 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.72386 ~ ~-0.34062 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.76085 ~ ~-0.24721 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.78583 ~ ~-0.14991 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.79842 ~ ~-0.05023 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.79842 ~ ~0.05023 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.78583 ~ ~0.14991 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.76085 ~ ~0.24721 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.72386 ~ ~0.34062 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.67546 ~ ~0.42866 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.61641 ~ ~0.50994 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.54764 ~ ~0.58317 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.47023 ~ ~0.64721 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.3854 ~ ~0.70105 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.2945 ~ ~0.74382 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.19895 ~ ~0.77487 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~00.27 ~ ~0.79369 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~0.8 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-00.27 ~ ~0.79369 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.19895 ~ ~0.77487 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.2945 ~ ~0.74382 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.3854 ~ ~0.70105 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.47023 ~ ~0.64721 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.54764 ~ ~0.58317 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.61641 ~ ~0.50994 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.67546 ~ ~0.42866 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.72386 ~ ~0.34062 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.76085 ~ ~0.24721 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.78583 ~ ~0.14991 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.79842 ~ ~0.05023 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.79842 ~ ~-0.05023 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.78583 ~ ~-0.14991 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.76085 ~ ~-0.24721 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.72386 ~ ~-0.34062 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.67546 ~ ~-0.42866 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.61641 ~ ~-0.50994 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.54764 ~ ~-0.58317 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.47023 ~ ~-0.64721 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.3854 ~ ~-0.70105 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.2945 ~ ~-0.74382 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.19895 ~ ~-0.77487 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-00.27 ~ ~-0.79369 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-1 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.12533 ~ ~-0.99211 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.24869 ~ ~-0.96858 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.36812 ~ ~-0.92978 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.48175 ~ ~-0.87631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.58779 ~ ~-0.80902 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.68455 ~ ~-0.72897 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.77051 ~ ~-0.63742 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.84433 ~ ~-0.53583 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.90483 ~ ~-0.42578 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.95106 ~ ~-0.30902 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.98229 ~ ~-0.18738 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.99803 ~ ~-0.06279 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.99803 ~ ~0.06279 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.98229 ~ ~0.18738 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.95106 ~ ~0.30902 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.90483 ~ ~0.42578 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.84433 ~ ~0.53583 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.77051 ~ ~0.63742 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.68455 ~ ~0.72897 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.58779 ~ ~0.80902 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.48175 ~ ~0.87631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.36812 ~ ~0.92978 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.24869 ~ ~0.96858 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.12533 ~ ~0.99211 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~1 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.12533 ~ ~0.99211 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.24869 ~ ~0.96858 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.36812 ~ ~0.92978 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.48175 ~ ~0.87631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.58779 ~ ~0.80902 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.68455 ~ ~0.72897 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.77051 ~ ~0.63742 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.84433 ~ ~0.53583 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.90483 ~ ~0.42578 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.95106 ~ ~0.30902 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.98229 ~ ~0.18738 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.99803 ~ ~0.06279 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.99803 ~ ~-0.06279 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.98229 ~ ~-0.18738 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.95106 ~ ~-0.30902 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.90483 ~ ~-0.42578 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.84433 ~ ~-0.53583 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.77051 ~ ~-0.63742 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.68455 ~ ~-0.72897 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.58779 ~ ~-0.80902 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.48175 ~ ~-0.87631 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.36812 ~ ~-0.92978 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.24869 ~ ~-0.96858 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.12533 ~ ~-0.99211 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-1.1 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.13787 ~ ~-1.09133 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.27356 ~ ~-1.06544 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.40494 ~ ~-1.02275 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.52993 ~ ~-0.96394 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.64656 ~ ~-0.88992 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.753 ~ ~-0.80187 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.84756 ~ ~-0.70117 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.92876 ~ ~-0.58941 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.99531 ~ ~-0.46836 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.04616 ~ ~-0.33992 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.08052 ~ ~-0.20612 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.09783 ~ ~-0.06907 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.09783 ~ ~0.06907 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.08052 ~ ~0.20612 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.04616 ~ ~0.33992 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.99531 ~ ~0.46836 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.92876 ~ ~0.58941 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.84756 ~ ~0.70117 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.753 ~ ~0.80187 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.64656 ~ ~0.88992 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.52993 ~ ~0.96394 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.40494 ~ ~1.02275 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.27356 ~ ~1.06544 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.13787 ~ ~1.09133 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~1.1 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.13787 ~ ~1.09133 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.27356 ~ ~1.06544 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.40494 ~ ~1.02275 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.52993 ~ ~0.96394 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.64656 ~ ~0.88992 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.753 ~ ~0.80187 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.84756 ~ ~0.70117 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.92876 ~ ~0.58941 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.99531 ~ ~0.46836 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.04616 ~ ~0.33992 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.08052 ~ ~0.20612 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.09783 ~ ~0.06907 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.09783 ~ ~-0.06907 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.08052 ~ ~-0.20612 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.04616 ~ ~-0.33992 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.99531 ~ ~-0.46836 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.92876 ~ ~-0.58941 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.84756 ~ ~-0.70117 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.753 ~ ~-0.80187 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.64656 ~ ~-0.88992 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.52993 ~ ~-0.96394 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.40494 ~ ~-1.02275 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.27356 ~ ~-1.06544 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.13787 ~ ~-1.09133 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~-1.2 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.37082 ~ ~-1.14127 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.70534 ~ ~-0.97082 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.97082 ~ ~-0.70534 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.14127 ~ ~-0.37082 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.2 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~1.14127 ~ ~0.37082 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.97082 ~ ~0.70534 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.70534 ~ ~0.97082 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0.37082 ~ ~1.14127 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~0 ~ ~1.2 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.37082 ~ ~1.14127 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.70534 ~ ~0.97082 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.97082 ~ ~0.70534 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.14127 ~ ~0.37082 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.2 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-1.14127 ~ ~-0.37082 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.97082 ~ ~-0.70534 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.70534 ~ ~-0.97082 0 0 0 0 1
execute if predicate ckenja.52villager:dust run particle dust 0 0 0 1 ~-0.37082 ~ ~-1.14127 0 0 0 0 1

## ぶれす
# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmABwCMArACymX30C0pAbPXK-QEykAhq0EBOTiIDMAIz4B2SgDMOtPij5gCAO0EBbBMkBhigAJqmsDEEY9AZyTgUAe0JaISPvQIo4ruBntgAG6C2IQG4AAeSAAMBFAxAL4JBNakaIR2iNQAdLQENhBWboixYHDY2GgwNgbU0aUYjoUQBqVoNgCiFVU1HQCOhCHYUADKlt7kiIohNUkAukA_3
# 円 1
# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmABwCMArACymX30C0pAbPXK-QEykAhq0EBOTiIDMAIz4B2SgDMOtPij5gCAO0EBbBMkBhigAJqmsDEEY9AZyTgUAe0JaISepQIo4ruBntgAG6C2IQG4AAeSAAMBFAxAL4JBNakaIR2iNQAdLQENhBWboixYHDY2GgwNgbU0aUYjoUQBqVoNgCiFVU1HQCOhCHYUADKlt7kiIohNUkAukA_3
# 円 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0 ~ ~-1.5 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.19579 ~ ~-1.48717 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.38823 ~ ~-1.44889 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.57403 ~ ~-1.38582 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.75 ~ ~-1.29904 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.91314 ~ ~-1.19003 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.06066 ~ ~-1.06066 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.19003 ~ ~-0.91314 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.29904 ~ ~-0.75 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.38582 ~ ~-0.57403 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.44889 ~ ~-0.38823 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.48717 ~ ~-0.19579 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.5 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.48717 ~ ~0.19579 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.44889 ~ ~0.38823 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.38582 ~ ~0.57403 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.29904 ~ ~0.75 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.19003 ~ ~0.91314 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~1.06066 ~ ~1.06066 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.91314 ~ ~1.19003 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.75 ~ ~1.29904 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.57403 ~ ~1.38582 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.38823 ~ ~1.44889 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0.19579 ~ ~1.48717 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~0 ~ ~1.5 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.19579 ~ ~1.48717 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.38823 ~ ~1.44889 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.57403 ~ ~1.38582 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.75 ~ ~1.29904 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.91314 ~ ~1.19003 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.06066 ~ ~1.06066 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.19003 ~ ~0.91314 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.29904 ~ ~0.75 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.38582 ~ ~0.57403 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.44889 ~ ~0.38823 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.48717 ~ ~0.19579 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.5 ~ ~0 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.48717 ~ ~-0.19579 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.44889 ~ ~-0.38823 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.38582 ~ ~-0.57403 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.29904 ~ ~-0.75 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.19003 ~ ~-0.91314 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-1.06066 ~ ~-1.06066 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.91314 ~ ~-1.19003 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.75 ~ ~-1.29904 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.57403 ~ ~-1.38582 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.38823 ~ ~-1.44889 0 0 0 0 1
execute if predicate ckenja.52villager:breath run particle dust 1 0 1 2 ~-0.19579 ~ ~-1.48717 0 0 0 0 1

## とるねーど
execute if predicate ckenja.52villager:tornado run particle portal ~0 ~ ~-1 -10 -40 -0 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.20791 ~ ~-0.97815 -9.78148 -40 -2.07912 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.40674 ~ ~-0.91355 -9.13545 -40 -4.06737 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.58779 ~ ~-0.80902 -8.09017 -40 -5.87785 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.74314 ~ ~-0.66913 -6.69131 -40 -7.43145 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.86603 ~ ~-0.5 -5 -40 -8.66025 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.95106 ~ ~-0.30902 -3.09017 -40 -9.51057 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.99452 ~ ~-0.10453 -1.04528 -40 -9.94522 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.99452 ~ ~0.10453 1.04528 -40 -9.94522 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.95106 ~ ~0.30902 3.09017 -40 -9.51057 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.86603 ~ ~0.5 5 -40 -8.66025 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.74314 ~ ~0.66913 6.69131 -40 -7.43145 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.58779 ~ ~0.80902 8.09017 -40 -5.87785 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.40674 ~ ~0.91355 9.13545 -40 -4.06737 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0.20791 ~ ~0.97815 9.78148 -40 -2.07912 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~0 ~ ~1 10 -40 -0 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.20791 ~ ~0.97815 9.78148 -40 2.07912 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.40674 ~ ~0.91355 9.13545 -40 4.06737 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.58779 ~ ~0.80902 8.09017 -40 5.87785 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.74314 ~ ~0.66913 6.69131 -40 7.43145 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.86603 ~ ~0.5 5 -40 8.66025 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.95106 ~ ~0.30902 3.09017 -40 9.51057 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.99452 ~ ~0.10453 1.04528 -40 9.94522 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.99452 ~ ~-0.10453 -1.04528 -40 9.94522 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.95106 ~ ~-0.30902 -3.09017 -40 9.51057 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.86603 ~ ~-0.5 -5 -40 8.66025 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.74314 ~ ~-0.66913 -6.69131 -40 7.43145 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.58779 ~ ~-0.80902 -8.09017 -40 5.87785 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.40674 ~ ~-0.91355 -9.13545 -40 4.06737 0.5 0

execute if predicate ckenja.52villager:tornado run particle portal ~-0.20791 ~ ~-0.97815 -9.78148 -40 2.07912 0.5 0

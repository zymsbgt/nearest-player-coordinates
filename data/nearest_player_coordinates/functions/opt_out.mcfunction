scoreboard players set @s npc.toggle 2
tag @s remove npc.random1
scoreboard players reset @s npc.xpos
scoreboard players reset @s npc.ypos
scoreboard players reset @s npc.zpos
scoreboard players reset @s npc.track_id
tellraw @s ["",{"text":"You now "},{"text":"won't see","color":"red"},{"text":" other's coordinates. Others "},{"text":"will not be able","color":"red"},{"text":" to see your coordinates, either."}]
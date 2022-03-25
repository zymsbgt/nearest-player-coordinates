## These functions will run as the player who opt-in to coordinate sharing

#> Update player locations
execute store result score @s npc.xpos run data get entity @s Pos[0]
execute store result score @s npc.ypos run data get entity @s Pos[1]
execute store result score @s npc.zpos run data get entity @s Pos[2]

#> Execute function based on player-chosen target priority
execute as @s[scores={npc.priority=0}] run function nearest_player_coordinates:display_location/none
execute as @s[scores={npc.priority=1}] run function nearest_player_coordinates:display_location/nearest
execute as @s[scores={npc.priority=2}] run function nearest_player_coordinates:display_location/furthest
execute as @s[scores={npc.priority=3}] run function nearest_player_coordinates:display_location/player3
execute as @s[scores={npc.priority=4}] run function nearest_player_coordinates:display_location/player4
execute as @s[scores={npc.priority=5}] run function nearest_player_coordinates:display_location/player5
execute as @s[scores={npc.priority=6}] run function nearest_player_coordinates:display_location/player6
execute as @s[scores={npc.priority=7}] run function nearest_player_coordinates:display_location/player7
execute as @s[scores={npc.priority=8}] run function nearest_player_coordinates:display_location/player8
execute as @s[scores={npc.priority=9}] run function nearest_player_coordinates:display_location/tracking_you
execute as @s[scores={npc.priority=10}] run function nearest_player_coordinates:display_location/reset
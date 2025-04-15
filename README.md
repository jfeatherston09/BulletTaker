# S-J-K-F/Wolfie-K:
## BIG PICTURE ITEMS:
- Enemies
- 2nd Player Creation
- Documentation and Workflow (Initial creation)

# jfeatherston09:
## BIG PICTURE ITEMS:
- Create Scene for the MC
- Power-ups
- Sprites
- Pause Menu
- Controls
- Documentation and Workflow (Rest of the creation)
# ImTheRealIndianGuy:
## BIG PICTURE ITEMS:
- Leaderboard
- Sprites(ish)
- Create TileMapLayer

# zoomtroopo:
## BIG PICTURE ITEMS:
- Game hud
- Main Menu
- Starting of enemy

# Description:
- You’re a guy trapped in the underworld. You must try your hardest to go back and meet again with your pet bunny, named fluffy. However, if you fail and get taken by the enemies you will go back to the start. This is the cycle that the game runs through endlessly with you defeating enemies and getting power up to get higher scores to eventually die and do it again to get an even higher score. Player one can move the main character up and down with the joystick's respective directions while player two can move the main character left an right also with the joystick's respective directions. You can also dash in any direction by pressing "L2"

# Instructions (How to test each of the chosen features and where to find the related scenes and scripts for each feature):
## Combat:
- You have to press or hold the shoot button (B) in order to shoot your gun. However, you have a limited amount of ammo you can shoot at a time. Pressing (L1) to reload the bullets you can shoot.

## Power-Ups:
There will be a random chance every 1 min or 2 min that a power up could spawn. The player would use the power up by pressing the  “A” button.
- 1st: Powerup that clears all bullets on screen in the instant it’s used
- 2nd: A power up that gives your invisibility frames that give you for 8 sec  
- 3rd: Produces a stronger and larger bullet that does a lot of damage 

## Enemies:
- The enemies will be demons from the other world that vary different from ours character world they will come from different variants small and big bosses and different type of demons  

## Movement and Collision:
- You move using the joystick, and can only move left, right, down or up. You can also dash using the “L2” button.

## Tilemap:
- We strive to implement a pixelated tilemap that feels very hellish. For example we will have many red and orange tile maps. Also we will have lavalike sprite animations, which will immerse the player even more into their natural state of being beginning to play in this simple yet effective bullet hell game.

## UI & ARCADE FEATURES:
### Main Menu:
- The main menu will have the title in and some options. The options will include, Start Game, leaderboard, and exit. There will be a hand that floats next to what option is currently being selected. Once they hit the select button (B) the hand will take the bullet and go to the next screen

### Game HUD:
- The HUD of the game will display a score that you increase by beating enemies. You also have stamina, health, and an ammo counter. These are all displayed so the player can be informed about them. The controls for the game will also be displayed (Buttons only, not the joystick)

### Pause Menu:
- The pause menu will be active upon the player pressing the X button. It will display “GAME IS PAUSED” at the top of the screen to indicate to the player that the game is paused. Pressing X again will unpause the game

### Input Mapping:
- JOYSTICK DIRECTIONS - Move the player in the respective direction.
- B BUTTON - Shoots your gun. Once if pressed. Continuously if held. Also used to select the options on the main menu
- A BUTTON - Uses the power up that the player has collected.
- X BUTTON - Pauses and unpauses the game.
- L2 BUTTON - Makes the player dash which gives temporary invincible frames.

### Player Interaction:
- The two players play at the same time. They both help each other to defeat enemies. However only one player can hold and use a power up. There could be some trolling interaction between each player with getting the power up first.

# Instructions (Where to find examples of each OOP concept and Godot feature)
## Inheritance:
- You can find inheretence within the enemy spawn nodes 1-#. You will also find in the enemy 1-# nodes as well.
## Encapsulation:
- You can find examples of encapsulation also within enemy 1-# nodes. Encapsulation may also be found in enemy spawn nodes 1-#.
## Polymorphism:
- 
## Abstraction:
- Abstaction can be found inside of the enemy node. Abstaction can also be found in the enemy span 1-# nodes.
# Godot Features:
## Node Types:
- 
## Signals:
- 
## Scenes:
- 

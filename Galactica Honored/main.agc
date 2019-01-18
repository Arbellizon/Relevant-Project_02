
// Project: csc Game 
// Created: 2017-04-18


SetVirtualResolution( 768, 1024 ) // doesn't have to match the window
UseNewDefaultFonts(0)

playerx as float
playery as float
Projectile_x as float = -100
Projectile_y as float
Projectile_move = 0
enemyx as float
enemyy as float
enemy_direction = 4
enemy_fired = 0
score=0
hi_score=69
gameover = 1
Lives = 3


#include "Loader.agc"
#include "PlayerMove.agc"
#include "Projectile.agc"
#include "enemy_move.agc"
#include "Collison.agc"
#include "Stars.agc"
#include "Text.agc"
#include "Sound_Effects.agc"
#include "mainmenu.agc"
#include "KillMenu.agc"

Gosub Loader
Gosub Make_stars
Gosub Sound_Effects
Gosub Background_Sound
Gosub Make_text
Gosub Make_lives


do
    if gameover=1
		gosub MainMenu
		score = 0
	endif
    if gameover=2
		gosub KillMenu
	endif
    Gosub PlayerMove
    Gosub Move_stars
    // Gosub Show_Score
    gosub Enemy_Shoot
    SetTextString(5,"Lives Left: " +str(lives))
    SetTextString(1,"SCORE: "+str(score))
    
    if score>hiscore
          hiscore=score
    endif
    SetTextString(3,"HiScore: "+str(hiscore))
    
    Gosub Projectile
    Gosub Enemy_move
    Gosub collision

    Print( ScreenFPS() )
    Sync()
loop

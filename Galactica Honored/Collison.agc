//Check sprite collisions

collision:

if GetspriteCollision(2, 3) =1

    playsound(explosion)
    score =score+1
    enemyx = Random(Random(-1,-1000),Random(1,1000)): enemyy =-50
    lazer_fired =0
    lazerx =-50 :lazery =-50
endif

//Check to see if any of the enemy bullets have hit the player ship
for i=0 to 4
	if GetSpriteCollision(110+i,1) =1
		playsound(explosion)
		gameover =1
		SetSpritePosition(110,-100,-100)
		SetSpritePosition(111,-100,-100)
		SetSpritePosition(112,-100,-100)
		SetSpritePosition(113,-100,-100)
		SetSpritePosition(114,-100,-100)
		enemyx = 100: enemyy= -50
		lives = lives -1
		if lives = -1
			gameover = 2
		endif
	endif
next i

return


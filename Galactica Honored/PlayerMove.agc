PlayerMove:

//Ship Move
playerx=playerx+GetDirectionX()*12

//Check if player ship at left edge
if playerx<0
	playerx=0
endif

//check if player ship at right edge

if playerx>getVirtualWidth()-GetSpriteWidth(1)
	playerx=GetVirtualWidth()-GetSpriteWidth(1)
endif

//set player ship position
SetSpritePosition(1,playerx,playery)

return


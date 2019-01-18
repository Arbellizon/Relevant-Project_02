loader:
//Player Ship =1
//Player Lazer =2
//Enemy Ship =3
//Stars = 5 to 104
//Enemy Bullets = 110 to 114

loadimage(1,"PLAYER_SHIP.4.png")
loadimage(2,"lazer.png")
loadimage(3,"EnemyShip.png")
loadimage(4,"lazer.png")

//player ship
createSprite(1,1)
playerx=GetVirtualWidth()/2 - GetSpriteWidth(1)/2
playery=GetVirtualHeight() - GetSpriteHeight(1)

SetSpritePosition(1,playerx,playery)

//lazer
createSprite(2,2)
SetSpritePosition(2,-100,-100)

//Enemy
CreateSprite(3,3)
SetSpritePosition(3,100,0)

//create 5 enemy bullets
for i=0 to 4
	createSprite(110+i,4)
next i

Return

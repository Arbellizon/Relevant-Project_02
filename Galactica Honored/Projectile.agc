Projectile:

if GetPointerPressed()= 1 and projectile_move= 0
	
	projectile_move= 1
	projectile_x= GetSpriteX(1) + GetSpriteWidth(1)/2 - GetSpriteWidth(2)/2
	projectile_y= GetSpriteY(1) - 40
	PlaySound(projectile)	
endif


if projectile_move= 1
	projectile_y = projectile_y - 10
endif

if projectile_y < -GetSpriteHeight(2)
	projectile_move = 0
endif

SetSpritePosition(2,projectile_x, projectile_y)

return

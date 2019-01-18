Make_stars:
createImageColor(5,255,255,255,255)
for i=1 to 100
	CreateSprite(i+5,5)
	SetSpriteSize(i+5,2,2)
	SetSpritePosition(i+5,random(1,768),random(1,1024))
next i
return

Move_stars:
for i=1 to 100
	StarY=GetSpriteY(5+i)+1
	if StarY>1024
		StarY=0
	endif
	setSpritePosition(i+5,GetSpritex(i+5),StarY)
next i
return

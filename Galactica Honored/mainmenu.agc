MainMenu:

Createtext(2,"Galatica The Honored")
SetTextSize(2,100)
SetTextPosition(2,(768-GetTexttotalWidth(2))/2,180)

Createtext(3,"High Score: ")
SetTextSize(3,50)
SetTextPosition(3,768-GetTexttotalwidth(3),0)

Createtext(4, "Fire to start Game")
SetTextSize(4,60)
SetTextPosition(4,(768-GetTexttotalWidth(4))/2,900)

gosub Hidegamesprites
gosub Showmenutext

if gameover=2
	gosub Hidemenutext
endif

repeat
	sync()
until GetPointerPressed() = 1

gameover = 0
gosub Showgamesprites
gosub Hidemenutext

return

//Player Ship = 1
//Player Lazer = 2
//Enemy SHip = 3
//stars = 5 to 104
//enemy bullets = 110 to 114

Hidegamesprites:
for i=1 to 114
	SetSpriteVisible(i,0)
next i
return

Showgamesprites:
for i=1 to 114
	SetSpriteVisible(i,1)
next i
return

Hidemenutext:
SetTextVisible(2,0)
SetTextVisible(4,0)

return

Showmenutext:
SetTextVisible(2,1)
SetTextVisible(3,1)
SetTextVisible(4,1)
SetTextVisible(5,1)
return



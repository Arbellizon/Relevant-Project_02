KillMenu:

CreateText(6,"Game Over, You Lose")
SetTextSize(6,50)
SetTextPosition(6,(768-GetTextTotalWidth(2))/2,180)

gosub MainMenu
gosub Hidegamesprites
gosub Showmenutext2
gosub Hidemenutext



repeat
	sync()
until GetPointerPressed() = 1

Showmenutext2:
SetTextVisible(3,1)
settextvisible(5,1)
settextvisible(1,1)


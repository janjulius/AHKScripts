1::
Loop, 6 
{
Random, r, 1, 809
ToolTip, 
If (r <= 10){
	Run, https://assets.pokemon.com/assets/cms2/img/pokedex/full/00%r%.png
}
If (r > 10 && r < 100){
	Run, https://assets.pokemon.com/assets/cms2/img/pokedex/full/0%r%.png
}
If (r > 100){ 
	Run, https://assets.pokemon.com/assets/cms2/img/pokedex/full/%r%.png
}
Sleep, 180000
}
Run, https://google.com
return

2::
return

3::
Random, r, 1, 809
ToolTip, 
If (r <= 10){
	Run, https://assets.pokemon.com/assets/cms2/img/pokedex/full/00%r%.png
}
If (r > 10 && r < 100){
	Run, https://assets.pokemon.com/assets/cms2/img/pokedex/full/0%r%.png
}
If (r > 100){ 
	Run, https://assets.pokemon.com/assets/cms2/img/pokedex/full/%r%.png
}

return

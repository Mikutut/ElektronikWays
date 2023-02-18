/// @description Wstaw opis w tym miejscu
// W tym edytorze możesz zapisać swój kod

if(string_length(global.combination) >= 3){
	if(global.combination == global.random_code){
		finishMinigame(true);
	}
	else{
		finishMinigame(false);
	}
}
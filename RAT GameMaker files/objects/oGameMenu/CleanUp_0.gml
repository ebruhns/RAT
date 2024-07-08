/// @description clean up Menu 


var i = 0, arrayLen = array_length(MenuPages)
repeat(arrayLen){

	ds_grid_destroy(MenuPages[i]);
	i++;
}



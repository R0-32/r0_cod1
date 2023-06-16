'use strict';
debugger;

const х = 120, у = 80, square_table = 9600, xx = 2, 
	yy = 2, square_coin = 4, height = .5;

const stolbiki = 100 / height;
const stolbiki_square = stolbiki * square_coin;
const remaining_space = square_table - stolbiki_square;

if ( remaining_space >= 0)  
{
console.log ("Уместятся");
}

console.log ("не Уместятся");


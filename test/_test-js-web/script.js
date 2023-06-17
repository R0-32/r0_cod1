'use strict';
debugger;
let mat = [
  [1, 2, 3],
  [4, 1, 0]
];

let rArr = [], rMax = 0;

for (let i = 0; i < mat.length; i++)
{
	let rSum = 0;
	for (let j = 0; j < mat[i].length; j++)
	{
		rSum += mat[i][j];
	}
	rArr.push(rSum);
}

for(const i of rArr)i>rMax?rMax=i:0;

const result = rMax;

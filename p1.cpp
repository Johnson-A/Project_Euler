//============================================================================
// Name        : Project_Euler.cpp
// Author      : 
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
using namespace std;

void p1() {
	int sum = 0;

	for(int i = 0; i < 1000; i++){
		if(i % 3 == 0 or i % 5 == 0){
			sum += i;
		}
	}

	cout << sum;
}

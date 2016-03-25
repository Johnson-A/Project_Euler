/*
 * p2.cpp
 *
 *  Created on: Mar 21, 2015
 *      Author: alex
 */

#include <iostream>
using namespace std;

int p2() {
	long upperBound = 4E12;
	long lower = 0;
	long upper = 1;
	long sum = 0;

	while(lower <= upperBound){
		if(lower % 2 == 0){
			sum += lower;
		}
		long temp = upper;
		upper += lower;
		lower = temp;
	}
	cout << sum;
}

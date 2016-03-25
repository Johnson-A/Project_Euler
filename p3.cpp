/*
 * p3.cpp
 *
 *  Created on: Mar 21, 2015
 *      Author: alex
 */
#include <iostream>
#include <math.h>

using namespace std;

int main(){
	long long num = 999999999999999999;
	for (long long i = 2; i <= sqrt(num); i++){
		while(num % i == 0){
			num /= i;
			cout << i << endl;
		}
	}
	cout << num;
}


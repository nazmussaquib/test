#include <stdexcept>
#include "Calculator.h"

int Calculator::add(int a, int b){
	return a + b;
}

int Calculator::sub(int a, int b){
	return a - b;
}

int Calculator::mul(int a, int b){
	return a * b;
}

int Calculator::div(int a, int b){
	if(b == 0){
		throw std::invalid_argument("divisor cannot be zero");
	}
	return a / b;
}

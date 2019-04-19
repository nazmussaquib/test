#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include <Calculator.h>

TEST_CASE("calculator works correctly", "[calculator]"){
	Calculator calc;
	
	SECTION("addition works"){
		REQUIRE(calc.add(2, 3) == 5);
	}

	SECTION("subtraction works"){
		REQUIRE(calc.sub(2, 3) == -1);
	}

	SECTION("multiplication works"){
		REQUIRE(calc.mul(2, 3) == 6);
	}

	SECTION("division works"){
		REQUIRE(calc.div(2, 3) == 0);
	}

	SECTION("division by zero throws exception"){
		REQUIRE_THROWS_AS(calc.div(2, 0), std::invalid_argument);
	}
}

TESTEXE = cpptest
SRC_DIR = src/main/cpp
TEST_DIR = src/test/cpp

default: $(TESTEXE)
$(TESTEXE): Calculator.o TestCalculator.o
	g++ -std=c++11 Calculator.o TestCalculator.o -o $@
Calculator.o: $(SRC_DIR)/Calculator.cpp
	g++ -std=c++11 -c $(SRC_DIR)/Calculator.cpp -o $@
TestCalculator.o: $(TEST_DIR)/TestCalculator.cpp
	g++ -std=c++11 -I$(SRC_DIR) -c $(TEST_DIR)/TestCalculator.cpp -o $@
clean:
	rm -rf *.o $(TESTEXE)

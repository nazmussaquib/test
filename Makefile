TESTEXE = cpptest
SRC_DIR = src/main/cpp
TEST_DIR = src/test/cpp

default: $(TESTEXE)
$(TESTEXE): Calculator.o TestCalculator.o
	g++ Calculator.o TestCalculator.o -o $@
Calculator.o: $(SRC_DIR)/Calculator.cpp
	g++ -c $(SRC_DIR)/Calculator.cpp -o $@
TestCalculator.o: $(TEST_DIR)/TestCalculator.cpp
	g++ -I$(SRC_DIR) -c $(TEST_DIR)/TestCalculator.cpp -o $@
clean:
	rm -rf *.o $(TESTEXE)

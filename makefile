VERILOG = iverilog
TARGET = simple.vcd
TEMP = temp.vvp

$(TARGET) : temp.vvp
	vvp temp.vvp
temp.vvp: voter_if.v Testbench.v
	$(VERILOG) -o $(TEMP) voter_if.v Testbench.v
clean:
	-del $(TARGET)
	-del $(TEMP)

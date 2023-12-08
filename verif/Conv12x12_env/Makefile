path := $(shell pwd)

all: main compile sim clean
.PHONY: all
RTL     := rtl
TB      := verif
COMP_OPT += +libext+.v+.sv
COMP_OPT += -debug_access+all -kdb -lca -fsdb
COMP_OPT += -full64 -q
#COMP_OPT += -timescale=1ns/1ns
COMP_OPT +=   -sverilog
COMP_OPT += -l comp.log
COMP_OPT += '-LDFLAGS -Wl,--no-as-needed'
COMP_OPT += +vcs+initreg+config
SIM_OPT += -l sim.log
SIM_OPT += +vcs+initreg+0
#BOOT_ADDR := 0x80000000
main: compile sim
compile:	

	vcs  -ntb_opts uvm-1.2 -sverilog -LDFLAGS -full64 -timescale=1ns/100fs -debug_all +lint=TFIPC-L +vc+vcdpluson -f $(path)/run.f +incdir+ $(path)
	
	

sim:
	./simv $(SIM_OPT)  +UVM_TESTNAME=acc_model_base_test +UVM_VERBOSITY=UVM_HIGH > output.txt

clean:
	rm -rf *.vdb csrc *.daidir *.h novas.* *.log *.simv *.fsdb waves.* *.dump verdiLog simvs

rerun: compile sim 

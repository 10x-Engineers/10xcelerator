class c_121_1;
    integer i = -119;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_121_1;
    c_121_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x0xx0zx0x10z01zx0zxx0z111z111zzzxzxxxxzzxxxxxxzxxxzxxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

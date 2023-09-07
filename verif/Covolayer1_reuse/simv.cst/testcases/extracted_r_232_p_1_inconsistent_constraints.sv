class c_232_1;
    integer i = -230;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_232_1;
    c_232_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1101z01x1100xxz111x1z01xxxx100zzzxxzzxzzzzxxzxzzzzxzxxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

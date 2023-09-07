class c_318_1;
    integer i = -316;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_318_1;
    c_318_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz01100x0100101z1z1z10z1x11z11xzxzxxxzxzxzxxzzxzxxzxzxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

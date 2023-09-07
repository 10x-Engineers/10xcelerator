class c_453_1;
    integer i = -451;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_453_1;
    c_453_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx11x0z10011z1z111x0z11z1zzx11xzzxzzxxxzzxxxzxzxzxzxxxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

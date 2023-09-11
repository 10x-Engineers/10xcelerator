class c_21_1;
    integer i = -19;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_21_1;
    c_21_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100zzxzx100z0x00z0z0000x0zz1x0xxzzzxxzxxzzzxxxxxxzzxzzzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

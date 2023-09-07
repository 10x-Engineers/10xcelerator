class c_579_1;
    integer i = -577;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_579_1;
    c_579_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1000xxz0zzz1z0zz0xx0xz001z1xxxzxzxzzxxxxxxzzxzxzzzzxzzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

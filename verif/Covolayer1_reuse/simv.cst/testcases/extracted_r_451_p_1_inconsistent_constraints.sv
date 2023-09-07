class c_451_1;
    integer i = -449;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_451_1;
    c_451_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxzxxz0x000zz0x1x00x0z0x1x1zz0zzxzzxzxxzxxzzzxxxxzzzxzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

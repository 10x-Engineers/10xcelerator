class c_1148_1;
    integer i = -190;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1148_1;
    c_1148_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100x0zxz1xx10010x11zxxx0z0xxxxxzzxxxzzzxzxxzxxzxzxzxxzxxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

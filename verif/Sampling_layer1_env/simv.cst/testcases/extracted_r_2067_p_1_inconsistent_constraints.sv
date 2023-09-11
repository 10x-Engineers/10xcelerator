class c_2067_1;
    integer i = -343;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2067_1;
    c_2067_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx1xz1x10xzxx1zzz1x1x01xxx1xz0zzzxzzxzzxxzxzxxzxxzzzxxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_1080_1;
    integer i = -178;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1080_1;
    c_1080_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1x0z0100000xz111x0xzzx0zx01zxzzxzxxxzzzxxzxxzxxxxzxzzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

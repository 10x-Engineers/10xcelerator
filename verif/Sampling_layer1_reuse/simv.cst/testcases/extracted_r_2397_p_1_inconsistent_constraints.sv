class c_2397_1;
    integer i = -398;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2397_1;
    c_2397_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z101z0zxzx0z0xz01zx110z0x1xzx0zxxzxxzxxxzxxxzzzxxzzzxzxzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

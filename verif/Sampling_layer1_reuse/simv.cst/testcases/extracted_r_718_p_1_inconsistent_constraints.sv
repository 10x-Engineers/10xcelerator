class c_718_1;
    integer i = -118;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_718_1;
    c_718_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0zz01x0x10101110z1z1111x001xzzxzzxxxzzzxzxzxzzzxzxxzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

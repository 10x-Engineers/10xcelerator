class c_2396_1;
    integer i = -398;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2396_1;
    c_2396_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01110x10zzzxz01xzz0xz10x011z1z1zxzxzxxxzzzxzzxxxzzzxzzzxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

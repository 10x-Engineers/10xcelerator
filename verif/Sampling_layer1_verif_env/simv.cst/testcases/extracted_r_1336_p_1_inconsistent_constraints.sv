class c_1336_1;
    integer i = -221;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1336_1;
    c_1336_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz001xxzx1x0001xzxz0011xxzx11xxxxxxzxxzxzzzzzxzxxzxzxxzxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_2265_1;
    integer i = -376;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2265_1;
    c_2265_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx11z0z1x1x000xxzx00111x00110zzzxzxxzxzzxxzxzxxzzzxzzzzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_1534_1;
    integer i = -254;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1534_1;
    c_1534_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1x1z0101xzzzxzzxxzz0001xzxxx0xxzxxzxxxzxxxzzzzzzxzxzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

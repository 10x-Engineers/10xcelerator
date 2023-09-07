class c_1535_1;
    integer i = -254;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1535_1;
    c_1535_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0zz0xz011zx0z11zxx1xx10zx1z11zxxxxxxxzzxzxxzzzzzxxzxzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
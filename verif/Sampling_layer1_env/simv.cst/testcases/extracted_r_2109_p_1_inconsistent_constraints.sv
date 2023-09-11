class c_2109_1;
    integer i = -350;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2109_1;
    c_2109_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx1zxzzzxz011xzxzx0zz0x1zx1zz0xxzxxxzzzxzzxzzxxzxxzzxxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

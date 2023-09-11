class c_2001_1;
    integer i = -332;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2001_1;
    c_2001_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1100xzx10z0xxzz1101zzz0011z101zxzzxzzzzxxzzzzxxzxxzzzzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

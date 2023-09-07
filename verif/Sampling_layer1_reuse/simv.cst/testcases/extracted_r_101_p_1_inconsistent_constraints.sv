class c_101_1;
    integer i = -15;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_101_1;
    c_101_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1xxx1000xzz0z100000z0zzz1x00zxzzxzxxxzxxzxzxxzxzzzxzzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

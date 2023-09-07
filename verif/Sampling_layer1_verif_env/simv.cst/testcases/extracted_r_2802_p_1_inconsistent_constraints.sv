class c_2802_1;
    integer i = -465;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2802_1;
    c_2802_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxxz0xxzz0xxzz1zxxx0xx000zxx00zzzzxxzxzxxxzzzxzzzxxzzxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

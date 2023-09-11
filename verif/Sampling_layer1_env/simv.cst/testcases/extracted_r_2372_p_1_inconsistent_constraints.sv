class c_2372_1;
    integer i = -394;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2372_1;
    c_2372_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0xz1x0xz00xxxxzx0zxx11000zzz0xzzzzxzxzzzxxxxzxzzzzzxzzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_2882_1;
    integer i = -479;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2882_1;
    c_2882_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1110z1zxzxx1xzx1x10000110x1zzzxxzzxxzzxzzxxxxzzzxxxzzzzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

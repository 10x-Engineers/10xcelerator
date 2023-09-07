class c_3233_1;
    integer i = -537;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3233_1;
    c_3233_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10xx0x00zxxx10zz10x0011zxz0xxzxxxzxzxzxzzxzxxxzzxxzzzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

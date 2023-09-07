class c_1896_1;
    integer i = -314;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1896_1;
    c_1896_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zz110xxzz10xx1z10010zzz001101zxzxxzzxxxzzxxxzzzxxzzzzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

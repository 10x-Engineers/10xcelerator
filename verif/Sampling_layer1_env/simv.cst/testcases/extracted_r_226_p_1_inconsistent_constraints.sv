class c_226_1;
    integer i = -36;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_226_1;
    c_226_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzx01x010x0x0x010zz0x01xz0zxxzxxxxzzzxxzzzxxzzxxzxxxxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

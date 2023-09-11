class c_120_1;
    integer i = -18;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_120_1;
    c_120_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz100xzxzz0z0xz0x0xxzzz11xx0xx1xzzxxxxzxzxzzzzzzzxzxzxxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

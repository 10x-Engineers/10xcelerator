class c_970_1;
    integer i = -160;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_970_1;
    c_970_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxx1100z1xx0zzz0010zxzxx11x0xzzzxxzzxzxxxxzxzxzxzxzzxxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

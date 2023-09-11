class c_2099_1;
    integer i = -348;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2099_1;
    c_2099_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz11z10z11z0x1xz0xx1zxz0xx11zx0xxzxxxxxxxzzxxzzzxxzzxxzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

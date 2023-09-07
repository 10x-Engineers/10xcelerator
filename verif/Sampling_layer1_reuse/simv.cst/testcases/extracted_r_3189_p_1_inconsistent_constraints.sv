class c_3189_1;
    integer i = -530;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3189_1;
    c_3189_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1z000zz1xz100x01x0xzxx1x10xz1xxzzzxxzxzxzzxzzxxxzxxxxzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

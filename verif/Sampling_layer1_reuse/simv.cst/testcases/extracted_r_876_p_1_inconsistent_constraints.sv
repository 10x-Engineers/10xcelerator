class c_876_1;
    integer i = -144;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_876_1;
    c_876_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zz1110xz1000zx0x1x00x1x0x1xzxxzzxzzzxzzxzzxzzzxzzzxzzzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

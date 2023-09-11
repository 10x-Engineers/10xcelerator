class c_414_1;
    integer i = -67;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_414_1;
    c_414_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100zxz1z10z1zzzxz1x0x1z001zz0z0xzxzxxxzxxzzzxxzxxxxzxxzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

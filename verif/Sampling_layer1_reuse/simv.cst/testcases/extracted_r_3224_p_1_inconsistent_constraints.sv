class c_3224_1;
    integer i = -536;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3224_1;
    c_3224_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xxxxz1x1xzz1z1x10xxx0x10zz101xzzxzzxxxxxxzxzzzxxzxxxzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_2430_1;
    integer i = -403;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2430_1;
    c_2430_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx01zxz0001101xzx000x0x1z1z10xxxxzzxzxzzxzzzzzzxzxxzxzzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_2304_1;
    integer i = -382;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2304_1;
    c_2304_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zxz10x00x10zx1xzzzz10z0011011xzxzzzxzxzzxxzzxzxxxzzxzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

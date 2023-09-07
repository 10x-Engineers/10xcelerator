class c_337_1;
    integer i = -55;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_337_1;
    c_337_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10zxz1xz10010xzz1z11z11011z100zxxxxxzzzxzxxxzxxzzxzxxzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

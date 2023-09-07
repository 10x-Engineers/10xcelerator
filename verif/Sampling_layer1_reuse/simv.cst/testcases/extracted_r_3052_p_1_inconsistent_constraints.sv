class c_3052_1;
    integer i = -507;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3052_1;
    c_3052_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z11z0x1xx10x0z100z1xxxx1011z10zxzzxzzxzzzxzzzxxxzzxxxxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

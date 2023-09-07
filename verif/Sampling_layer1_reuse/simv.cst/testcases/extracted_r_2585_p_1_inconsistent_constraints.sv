class c_2585_1;
    integer i = -429;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2585_1;
    c_2585_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11x0x1x1010zx00zz0z10zx00100z1xzzxxzzxxxxzxzzzxzzxxxzzxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

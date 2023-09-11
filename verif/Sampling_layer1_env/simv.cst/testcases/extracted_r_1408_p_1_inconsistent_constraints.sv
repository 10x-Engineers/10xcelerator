class c_1408_1;
    integer i = -233;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1408_1;
    c_1408_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxx1101zx00x1x0xzx10xxz1zx1zx0xxzzxzzxxzzxxzzxxzzxzzzxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

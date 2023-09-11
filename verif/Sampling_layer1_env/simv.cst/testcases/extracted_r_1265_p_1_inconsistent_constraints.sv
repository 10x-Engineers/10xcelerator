class c_1265_1;
    integer i = -209;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1265_1;
    c_1265_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzzxz010xzxx0z0110z100x0x0z10zzxzxzzzzxzzzxzzxxzxxxxzzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

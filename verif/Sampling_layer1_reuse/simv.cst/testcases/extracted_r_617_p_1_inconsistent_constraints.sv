class c_617_1;
    integer i = -101;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_617_1;
    c_617_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx1z10x1111zz100z10x01zzxz1xx0xzxzxxxzzzzzxxxzxxzzxzxxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

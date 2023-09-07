class c_721_1;
    integer i = -119;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_721_1;
    c_721_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zxzzzx0zx01x1x0x0000x11010x1zzxzxzxxxxzzxzxzzxzxzxzzzxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

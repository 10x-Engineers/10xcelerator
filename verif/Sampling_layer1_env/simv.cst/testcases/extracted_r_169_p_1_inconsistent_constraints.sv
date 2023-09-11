class c_169_1;
    integer i = -27;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_169_1;
    c_169_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11x1110z01z0xxxxz10zz100z010x0zxxzzxzxzzxzxzzxxxxxxxzzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

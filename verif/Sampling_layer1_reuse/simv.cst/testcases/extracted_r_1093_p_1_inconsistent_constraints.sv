class c_1093_1;
    integer i = -181;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1093_1;
    c_1093_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x00x1xxz100x1zxxx0zzxx11001x11xzxxxxxxxzzzxzxxzxxzzzzxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

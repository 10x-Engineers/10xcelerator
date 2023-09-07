class c_37_1;
    integer i = -5;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_37_1;
    c_37_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x1zx0zzx010x110zx11x1zx00x100xxxxxxxzxxzxxxzzzxzxzxzxzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

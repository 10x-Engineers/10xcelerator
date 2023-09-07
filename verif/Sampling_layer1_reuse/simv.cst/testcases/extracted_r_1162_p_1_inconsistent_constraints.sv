class c_1162_1;
    integer i = -192;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1162_1;
    c_1162_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00xxz00x0x00z0x110xxz00z10zx0zzzzxzzxxxxxxxzxxzxxzxzzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

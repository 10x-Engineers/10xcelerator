class c_1253_1;
    integer i = -207;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1253_1;
    c_1253_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zxx1z10111xx0zx0x1x1110100x0zzzzxxxxzxxzxzxxxxxxzxxzxxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

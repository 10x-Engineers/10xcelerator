class c_2593_1;
    integer i = -431;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2593_1;
    c_2593_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0100zx001zzx0x1z1zzx01zzxzx00xzzxxzzzzzxxxzzxxzzxxxxxxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

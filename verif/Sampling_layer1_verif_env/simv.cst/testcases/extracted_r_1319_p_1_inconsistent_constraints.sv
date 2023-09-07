class c_1319_1;
    integer i = -218;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1319_1;
    c_1319_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xzx0x11011zzz10zzx1100zzx0011xzxzxxzzzxzxzzxzxzxxxxxxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

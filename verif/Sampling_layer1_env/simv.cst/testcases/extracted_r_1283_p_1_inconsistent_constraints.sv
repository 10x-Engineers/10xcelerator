class c_1283_1;
    integer i = -212;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1283_1;
    c_1283_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11z1zx1z0x10z00x10zzz00xxx1zzzxzxxxzzzxzxxxxxxzxxxzzxzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

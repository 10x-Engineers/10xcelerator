class c_1097_1;
    integer i = -181;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1097_1;
    c_1097_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z11x011x00000zzx1z1zz10zzx0z1zxxzzxzzzzxzzzzzzxxxxxxxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

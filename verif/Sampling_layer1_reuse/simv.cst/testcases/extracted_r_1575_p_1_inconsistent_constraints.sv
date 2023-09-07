class c_1575_1;
    integer i = -261;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1575_1;
    c_1575_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0101x1001xzzz1z0zzx1x000zzx0000zxxzxxxzxzxzxzxxxzzxzxzxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_542_1;
    integer i = -89;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_542_1;
    c_542_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0zz000xzx1zzxz0z1x10zzzz0xx011zzxxxzzxzxxzzxzxxzzxzxxxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

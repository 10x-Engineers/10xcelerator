class c_826_1;
    integer i = -136;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_826_1;
    c_826_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxz1xz01xz0xxx0z0z1zzz1x0x0zx1zzzxxzzxxzzzxzzxxzzxzzzxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

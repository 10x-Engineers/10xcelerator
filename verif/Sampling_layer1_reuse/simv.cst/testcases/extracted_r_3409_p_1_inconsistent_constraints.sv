class c_3409_1;
    integer i = -567;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3409_1;
    c_3409_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x111xzx0xz0x00x1x11100xz0z0x110zzzxxxzzzxxzxzxxzzzzxxxxxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

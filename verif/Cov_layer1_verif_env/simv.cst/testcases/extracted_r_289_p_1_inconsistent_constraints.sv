class c_289_1;
    integer i = -287;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_289_1;
    c_289_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0110xz001z1x1x0x00xzz100zx10x0zzzzxzxxxzzzxxxxxxzxxzxzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

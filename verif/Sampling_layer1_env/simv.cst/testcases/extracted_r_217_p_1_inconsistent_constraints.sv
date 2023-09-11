class c_217_1;
    integer i = -35;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_217_1;
    c_217_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zz1z0x1zx1zx00x11x111zx1xz100xxzxxxxzxzzzxxxxxxzzxzxxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

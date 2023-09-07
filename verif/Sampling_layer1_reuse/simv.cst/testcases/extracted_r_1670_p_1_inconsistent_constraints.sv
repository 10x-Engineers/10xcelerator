class c_1670_1;
    integer i = -277;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1670_1;
    c_1670_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11zz0001z10011xz01zx111x0x0xzxzzxzxzxzxzxxzzxzxxxxzxxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
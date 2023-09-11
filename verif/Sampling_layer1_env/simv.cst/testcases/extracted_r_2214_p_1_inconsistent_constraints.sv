class c_2214_1;
    integer i = -367;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2214_1;
    c_2214_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z1x11x1100z0xz110x1110xxzx0x1xxzxxxxxxzzxzzzzzzxxzzxzxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_776_1;
    integer i = -128;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_776_1;
    c_776_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz1x11zx1z0z0z0x0zzz1x0zz0xz01xzzxxxzxzxzxxxzzzzxzzxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

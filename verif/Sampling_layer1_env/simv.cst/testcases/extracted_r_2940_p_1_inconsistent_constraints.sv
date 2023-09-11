class c_2940_1;
    integer i = -488;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2940_1;
    c_2940_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z1zxx0zx0xz00xzz0zzz1xzx0x101zzxzzxzxxxzxzzzzzzzzzxxxxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

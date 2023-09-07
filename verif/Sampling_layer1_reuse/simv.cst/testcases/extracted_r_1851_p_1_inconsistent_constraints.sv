class c_1851_1;
    integer i = -307;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1851_1;
    c_1851_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01zz0zxx0xz1010x11x10z1z0zzz0xxzzzzzxzzzxzzzzxxxzxzzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_554_1;
    integer i = -91;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_554_1;
    c_554_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011z0x11zz1z10xx1z0x0xz011x1x0zxzxxzzxzxxzxzzxzxxzxxxxxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

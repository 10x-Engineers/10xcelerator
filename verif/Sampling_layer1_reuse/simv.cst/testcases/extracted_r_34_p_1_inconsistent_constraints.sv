class c_34_1;
    integer i = -4;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_34_1;
    c_34_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz0z0x11zx1zzz0110zxx1zzx0111xxxzzzzzxzzzxzxzzxzxxzxxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

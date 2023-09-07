class c_304_1;
    integer i = -49;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_304_1;
    c_304_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz101100z1z0xz1zxzzxxx0z10010zzxzzxzzzzxzxxzxxzxxzzzxxxxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

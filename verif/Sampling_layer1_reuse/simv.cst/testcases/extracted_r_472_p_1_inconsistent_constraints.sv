class c_472_1;
    integer i = -77;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_472_1;
    c_472_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx1z10100zx0z0011z001xz110zx11zzxxzzxzzxzxxzzxxzxzzxzxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

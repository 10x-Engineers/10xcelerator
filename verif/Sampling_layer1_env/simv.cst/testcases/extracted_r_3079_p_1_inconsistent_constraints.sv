class c_3079_1;
    integer i = -512;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3079_1;
    c_3079_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xzx1110x11x10010xz00010zzz1z1zzzzzxxxzxzzxzzxzxzxxxzxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

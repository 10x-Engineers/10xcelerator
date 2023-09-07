class c_683_1;
    integer i = -112;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_683_1;
    c_683_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x1z10z0z10010x0xzxxx1zz10xx0zzxzxzzzxxzzxzzzzxzxzxxxxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

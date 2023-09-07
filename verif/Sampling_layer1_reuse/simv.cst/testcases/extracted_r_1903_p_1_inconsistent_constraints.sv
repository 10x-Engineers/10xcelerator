class c_1903_1;
    integer i = -316;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1903_1;
    c_1903_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z0z000x100zzxzx110zz1z10xzz0zzxzxzxzxzzxzzxxxxzxxxxxxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

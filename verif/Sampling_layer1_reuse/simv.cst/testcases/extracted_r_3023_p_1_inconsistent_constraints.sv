class c_3023_1;
    integer i = -502;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3023_1;
    c_3023_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x10100xzzx0x0z1zx011xzz11zzxxxxxxzxxxzxzzzxzxzzxzzzxzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
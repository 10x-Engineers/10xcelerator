class c_3230_1;
    integer i = -537;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3230_1;
    c_3230_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x1zx0000zxzx0z0x0zzx1z11zz1z1zxzzxxzzzxzxzzxxxzzzxxxxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

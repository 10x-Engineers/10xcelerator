class c_1850_1;
    integer i = -307;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1850_1;
    c_1850_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0xx0xzzx1z1z0z11100xz1110xxx1zzxxzxxzxxzxzzzzzzzzzzzxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

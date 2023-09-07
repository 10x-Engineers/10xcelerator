class c_3238_1;
    integer i = -538;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3238_1;
    c_3238_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z10x0z1zzx11zz1zzxxx001zxx011xzxzxxzzzxzxxzzzzxxxzzzzzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

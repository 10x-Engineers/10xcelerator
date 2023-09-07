class c_1475_1;
    integer i = -244;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1475_1;
    c_1475_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx00zzx1xz1z0z1zz011010z11z10xxxxxzzzzzzxzxzxzxxzzxzzzxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

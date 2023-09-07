class c_1234_1;
    integer i = -204;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1234_1;
    c_1234_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0x1z10xzzx1z10z1zxxz10x0x010z0zzxzzxxzxzzxxzxxxzxxxzzzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

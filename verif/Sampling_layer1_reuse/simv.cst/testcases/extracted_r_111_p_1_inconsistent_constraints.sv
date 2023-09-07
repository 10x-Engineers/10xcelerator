class c_111_1;
    integer i = -17;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_111_1;
    c_111_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0zzx0x110z0xz0x1z00x111xz0x101xzxxzxzzxxxxxzzxxzxzxxzzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

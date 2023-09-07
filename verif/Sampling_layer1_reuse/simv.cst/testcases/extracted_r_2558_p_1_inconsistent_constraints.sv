class c_2558_1;
    integer i = -425;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2558_1;
    c_2558_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zz00zxxz1z1zx0zzx0xz0x10x1101zzzzzzxxzxzzxxzzxxzxxzzxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

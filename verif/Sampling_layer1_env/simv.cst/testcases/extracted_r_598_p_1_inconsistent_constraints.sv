class c_598_1;
    integer i = -98;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_598_1;
    c_598_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzx1x1zzxxz0x10x00xx0z10100z00xzxxxzxzxxzzzxzxzxzxxzxzxzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

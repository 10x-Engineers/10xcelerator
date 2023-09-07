class c_822_1;
    integer i = -135;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_822_1;
    c_822_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1z0zzxxz0x1x1zxzz111z00x00xz1xzxxzxxzzzxxzzzzzxzzzzxzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

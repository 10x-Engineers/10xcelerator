class c_1675_1;
    integer i = -278;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1675_1;
    c_1675_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xz1z0011z0x0xx0xxxxxxx00z1100zzzzxxxxzxxxxzxxzxzxxxzzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

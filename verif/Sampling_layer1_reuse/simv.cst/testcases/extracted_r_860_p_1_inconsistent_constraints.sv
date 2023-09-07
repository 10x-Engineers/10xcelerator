class c_860_1;
    integer i = -142;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_860_1;
    c_860_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x01zx11zzz0xz10zzzzxzzz1x0z1xzxzxxzxzzxzxzzxzzzzzzzzxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

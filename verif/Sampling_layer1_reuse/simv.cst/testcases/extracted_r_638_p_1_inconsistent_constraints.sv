class c_638_1;
    integer i = -105;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_638_1;
    c_638_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11xzxzxz1zzz0x10zx010z11xx00z1xzxzzxzxxxzxxzzxxzzxzxxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_1821_1;
    integer i = -302;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1821_1;
    c_1821_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01xx1xz0xzz00zx01111zzz1zzz101xxzxxxzxzzxxzxzzxzzzzxzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_168_1;
    integer i = -26;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_168_1;
    c_168_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxz1z10xx1zzzxz0xx0zzz00001z10zxzzzzzxzxzxzxzxxxxzxxxzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

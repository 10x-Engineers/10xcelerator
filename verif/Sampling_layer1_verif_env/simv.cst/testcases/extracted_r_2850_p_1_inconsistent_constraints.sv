class c_2850_1;
    integer i = -473;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2850_1;
    c_2850_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z000z01xxxz00100z011xz0z00z1zzzzzzxzzxzxxzzzxzxzzxxzzxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

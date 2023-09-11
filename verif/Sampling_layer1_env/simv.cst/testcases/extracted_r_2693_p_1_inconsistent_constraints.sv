class c_2693_1;
    integer i = -447;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2693_1;
    c_2693_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0z00z1111xxz1100110101zz00x10zzxxxxxxzzxxxxxzxzzzxxzxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

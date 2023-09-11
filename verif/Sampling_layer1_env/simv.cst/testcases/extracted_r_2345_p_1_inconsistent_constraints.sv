class c_2345_1;
    integer i = -389;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2345_1;
    c_2345_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0xxz0z111xxzz0101011z00xz00xzxxxzxzxxxxzzxxxxxzxzzzzxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

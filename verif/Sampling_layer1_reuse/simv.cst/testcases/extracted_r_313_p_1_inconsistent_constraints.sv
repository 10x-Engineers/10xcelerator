class c_313_1;
    integer i = -51;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_313_1;
    c_313_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0xz10zxzxxxxxzxxxxx11011z00xzzzxzxzzxxzzxxxzzxzzxzzzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

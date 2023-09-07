class c_3269_1;
    integer i = -543;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3269_1;
    c_3269_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z111x1z00xxz00zxxz00zzzz100x0zxzzxzzzzzxxzzzzxxzxxzzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

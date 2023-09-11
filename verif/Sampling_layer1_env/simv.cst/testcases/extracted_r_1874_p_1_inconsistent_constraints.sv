class c_1874_1;
    integer i = -311;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1874_1;
    c_1874_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z001001z1z010xz00zz1111xzzz0zzzxzzxxxzxxzxzxzzzzxxzzzxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

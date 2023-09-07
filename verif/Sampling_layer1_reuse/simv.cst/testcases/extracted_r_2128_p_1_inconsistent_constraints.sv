class c_2128_1;
    integer i = -353;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2128_1;
    c_2128_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011011x1z000x0xxzzzz101111x1x0z1zxxxzxzxxxxzxzzzxzzxzzxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

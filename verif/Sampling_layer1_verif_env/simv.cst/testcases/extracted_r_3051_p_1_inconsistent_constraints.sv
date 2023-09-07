class c_3051_1;
    integer i = -507;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3051_1;
    c_3051_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x000xz10011z000z0zxxxxz101x1zxzxzzxxzzxzzxxzxxzzzzzzzxzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_2352_1;
    integer i = -390;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2352_1;
    c_2352_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0zz11zx110zzzz101xx111zxxxx11zxxxzxzzxzxzzxzxxxxxzxzxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
class c_434_1;
    integer i = -71;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_434_1;
    c_434_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx0zx1x0z11000001xz0zx110x0xz1zzzxzxzxzxxxxxzzzxxzzzxzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

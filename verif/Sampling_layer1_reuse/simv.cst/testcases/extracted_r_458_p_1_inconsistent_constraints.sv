class c_458_1;
    integer i = -75;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_458_1;
    c_458_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10001xz0xz0010zz0z0xzxxxzxzxzzxzzzxxzxxzxzzzxzxxxzzxzzxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

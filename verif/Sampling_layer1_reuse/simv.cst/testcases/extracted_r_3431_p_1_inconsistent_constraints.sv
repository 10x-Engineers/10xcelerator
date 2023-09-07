class c_3431_1;
    integer i = -570;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3431_1;
    c_3431_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011zx11000zx11x01xz0z1zxxzx0z0xxxxzzxzxzzzxxxxxzxxzxzzzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

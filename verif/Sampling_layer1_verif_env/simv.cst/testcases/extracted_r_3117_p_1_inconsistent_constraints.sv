class c_3117_1;
    integer i = -518;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3117_1;
    c_3117_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000zx1xx0xz101xzzz0z01x10001001xzxxzxxzxxxxxxxxxxxxzxxxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

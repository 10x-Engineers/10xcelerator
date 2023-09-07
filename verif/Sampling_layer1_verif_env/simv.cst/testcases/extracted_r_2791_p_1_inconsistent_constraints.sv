class c_2791_1;
    integer i = -464;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2791_1;
    c_2791_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z10100zxz110z0z000zx0z01xx101zxzzzzxzxxxzzxzzxzzxxxxxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

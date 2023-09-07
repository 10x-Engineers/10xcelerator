class c_1825_1;
    integer i = -303;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1825_1;
    c_1825_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1101zx01xz01x1z0z11x1xzxzzxz1zxzxzzzzzxzxzxzxzxxxxzxxzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

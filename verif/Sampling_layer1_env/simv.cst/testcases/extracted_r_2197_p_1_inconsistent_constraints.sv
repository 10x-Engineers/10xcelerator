class c_2197_1;
    integer i = -365;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2197_1;
    c_2197_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zxxx10101zxxzx01xz100110z10z1zxxxxzxzzxxxxxxzzzxxzxxzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

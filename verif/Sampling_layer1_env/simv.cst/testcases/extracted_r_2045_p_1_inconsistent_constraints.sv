class c_2045_1;
    integer i = -339;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2045_1;
    c_2045_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzz0zxzz0110zz11xz1101zx000zx0xxxzzxxzxzxzxxzzzzzzzzzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

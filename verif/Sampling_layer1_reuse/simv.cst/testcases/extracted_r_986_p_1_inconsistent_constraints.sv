class c_986_1;
    integer i = -163;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_986_1;
    c_986_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10xz0100x0z101101zz00zx01010x1zxzxxzxxzzxxxxxxzxxzxzxzzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

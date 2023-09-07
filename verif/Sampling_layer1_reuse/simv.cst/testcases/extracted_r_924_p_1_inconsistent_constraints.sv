class c_924_1;
    integer i = -152;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_924_1;
    c_924_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz100x0xzx1xxxz1xz10z011101xz1xxxzxzzxzxzzxzxxzxxzxzzxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_1296_1;
    integer i = -214;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1296_1;
    c_1296_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzxxz1z1z1z000001xz0xxz0xx1xz1xxxzxxxzzxzzzzxxxxxxzzxzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

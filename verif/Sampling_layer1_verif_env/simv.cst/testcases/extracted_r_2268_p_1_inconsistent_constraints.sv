class c_2268_1;
    integer i = -376;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2268_1;
    c_2268_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx00zx1z11xzz10zxxz00z1xx1011xzzxzxxxxzxzxzxxxxxxzxzxxzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

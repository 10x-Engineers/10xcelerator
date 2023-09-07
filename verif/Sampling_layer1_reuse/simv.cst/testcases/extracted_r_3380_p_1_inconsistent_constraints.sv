class c_3380_1;
    integer i = -562;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3380_1;
    c_3380_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0zzz000zz100x11011001x1xz010zxzzxzzxzxzzxzzxzzxzxxzxxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

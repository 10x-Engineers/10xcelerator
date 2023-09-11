class c_1959_1;
    integer i = -325;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1959_1;
    c_1959_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxxx1z1x1z1x11z00xxz0zxxz1z10xzxxxzzxxzzzxxxzxxxzzzxzxxzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

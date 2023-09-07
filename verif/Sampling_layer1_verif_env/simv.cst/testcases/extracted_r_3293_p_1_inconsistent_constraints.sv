class c_3293_1;
    integer i = -547;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3293_1;
    c_3293_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01100x1z10x10x1z01xx0z1z0100x1x1xzxxxzxxzxzxxzxxxzxxxxxxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

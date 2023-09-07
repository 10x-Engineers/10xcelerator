class c_2516_1;
    integer i = -418;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2516_1;
    c_2516_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1x1z1011z0001xz010101xz1xz01xzzzzxzxzzzxzzxxzzxzzzzzzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_2703_1;
    integer i = -449;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2703_1;
    c_2703_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0x0x0x0xxz1z1011xzz0zx1000x10xzxxxzxxzzzxxxzxxzxzxxxzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

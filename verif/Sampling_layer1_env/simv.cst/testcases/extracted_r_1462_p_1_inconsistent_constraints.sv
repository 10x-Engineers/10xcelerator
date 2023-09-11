class c_1462_1;
    integer i = -242;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1462_1;
    c_1462_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xz0101zx0z0zx10z011000xx11110xzxzxzzzzzxzzzxzxxxzzzxzzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
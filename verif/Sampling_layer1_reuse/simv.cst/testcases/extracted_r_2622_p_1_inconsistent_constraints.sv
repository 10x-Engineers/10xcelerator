class c_2622_1;
    integer i = -435;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2622_1;
    c_2622_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx001x0x11x0011011z1zx0z0x1x10xxxzzzzzzxzxzzzzxzzzxzxxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

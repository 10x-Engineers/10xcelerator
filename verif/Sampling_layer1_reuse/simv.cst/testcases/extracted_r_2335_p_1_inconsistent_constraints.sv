class c_2335_1;
    integer i = -388;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2335_1;
    c_2335_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx10zx10010zx0z01x1x0xxzz1zxx1xzzxxxxxxzzxxzxzzzxzxxxxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

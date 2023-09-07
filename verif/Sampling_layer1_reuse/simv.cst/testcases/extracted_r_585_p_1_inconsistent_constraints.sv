class c_585_1;
    integer i = -96;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_585_1;
    c_585_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0111110xz010zz1x110xz1x0xxxz1z1xzzxzzzzxzzxzzzxzxxzxxxzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

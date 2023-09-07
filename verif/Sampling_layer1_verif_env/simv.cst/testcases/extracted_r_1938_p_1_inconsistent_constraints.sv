class c_1938_1;
    integer i = -321;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1938_1;
    c_1938_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx0x0z1xz001xx001010xxx0zz100zzzxzzxxzxxzxzxzzzzzxxzxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

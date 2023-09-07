class c_637_1;
    integer i = -105;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_637_1;
    c_637_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001zx1z1x00100zxx1z0zx100101x0zzzxzzxxzzzxzxzzzzxzxxxzzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

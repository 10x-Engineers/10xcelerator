class c_436_1;
    integer i = -71;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_436_1;
    c_436_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110z0z0xx001001xz010z1xx11z1011zxzzzzxzxzzzzzxxzxxzxxxxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

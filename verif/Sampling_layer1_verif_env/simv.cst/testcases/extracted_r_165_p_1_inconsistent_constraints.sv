class c_165_1;
    integer i = -26;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_165_1;
    c_165_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0zz11z11x1zxxxxx110z0z1zx0zx0zxxzxzxxzzzzzzzxxxxxxxzxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

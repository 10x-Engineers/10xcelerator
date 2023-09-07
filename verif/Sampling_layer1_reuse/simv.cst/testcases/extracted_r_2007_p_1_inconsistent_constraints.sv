class c_2007_1;
    integer i = -333;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2007_1;
    c_2007_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0110x0zx1zx00zx0z1z1z100110zxxxzzzxzxxxxzzzxxxzxxzxzzxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

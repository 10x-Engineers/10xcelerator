class c_2575_1;
    integer i = -428;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2575_1;
    c_2575_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z1xzzz10100xxxz11z11x1x0z11z1zxxxzxzzxzxxxzxzxzxzzzzzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

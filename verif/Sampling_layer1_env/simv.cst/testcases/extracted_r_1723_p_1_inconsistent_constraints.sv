class c_1723_1;
    integer i = -286;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1723_1;
    c_1723_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1001001011zxz10xxzzz01101001x0zxzxzxxzzxxxzxxxzzzxzzxzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

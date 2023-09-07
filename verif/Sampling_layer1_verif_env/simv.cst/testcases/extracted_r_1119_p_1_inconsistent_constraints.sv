class c_1119_1;
    integer i = -185;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1119_1;
    c_1119_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzz0z0110xxz01xzxz11110z1z101xxxzzzxxzzxzxzxxzxxxzxzzzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

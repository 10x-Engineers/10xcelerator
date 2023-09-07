class c_65_1;
    integer i = -9;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_65_1;
    c_65_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x0z010011xxx10011z1z11zxzxz1zxxzxxzzzzxxxxzxzxzzxzzxzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

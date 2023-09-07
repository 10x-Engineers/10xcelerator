class c_1238_1;
    integer i = -205;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1238_1;
    c_1238_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z0111zx1xx0z0111xxzzz1z11x011zxzxzxzzzxzxxzxzxzzxzzzzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

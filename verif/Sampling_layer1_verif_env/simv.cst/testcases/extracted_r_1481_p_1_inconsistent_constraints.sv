class c_1481_1;
    integer i = -245;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1481_1;
    c_1481_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x11zxz10zx11100zz0zz11z1zz111xxzxzxxxxxzzzzxzzzxxzzzxzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

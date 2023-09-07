class c_113_1;
    integer i = -17;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_113_1;
    c_113_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000x1xx01x11zz10z0z1x0011z0z0z0zxzzxxzzxzzxzxxxxxzzzxxxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

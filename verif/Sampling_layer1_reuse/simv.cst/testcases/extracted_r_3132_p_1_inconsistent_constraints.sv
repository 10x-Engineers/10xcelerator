class c_3132_1;
    integer i = -520;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3132_1;
    c_3132_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zz0zx0011z000011zxz1010x0xzxxzzzxxxzxxxzzzzzxzzxxxxzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

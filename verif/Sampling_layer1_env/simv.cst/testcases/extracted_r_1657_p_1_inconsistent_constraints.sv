class c_1657_1;
    integer i = -275;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1657_1;
    c_1657_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0zz1x11zz0xzzz0xx01011z1z0xx0xxxxxxxxxzxzzxzxxzzxzzxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_3437_1;
    integer i = -571;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3437_1;
    c_3437_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx0z0z10000011zx0xxx1xx1zzz1xxxxzxzxzzxzxxzxxxzzzxzzxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

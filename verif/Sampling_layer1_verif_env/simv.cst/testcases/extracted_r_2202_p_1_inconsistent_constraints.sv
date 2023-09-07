class c_2202_1;
    integer i = -365;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2202_1;
    c_2202_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xx1xx0z100zz011z100z0111xz0z11zxzxzzzzxzxzzxxzzxxxzzxxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

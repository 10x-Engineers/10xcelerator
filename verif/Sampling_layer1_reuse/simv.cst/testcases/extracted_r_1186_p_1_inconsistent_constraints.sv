class c_1186_1;
    integer i = -196;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1186_1;
    c_1186_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zz10xx10101x11xx11x11zz0x11x1xzxzxzxxzxzxxxzxzzxzzxxxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

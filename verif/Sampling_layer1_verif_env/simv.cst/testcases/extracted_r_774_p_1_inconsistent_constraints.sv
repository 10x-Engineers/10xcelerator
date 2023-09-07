class c_774_1;
    integer i = -127;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_774_1;
    c_774_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zz00z10100x0zxx011xx111xx1001xzxxzzxzxxzzzzxzxzzzzzzzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
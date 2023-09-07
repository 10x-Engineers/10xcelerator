class c_2074_1;
    integer i = -344;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2074_1;
    c_2074_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx00zx0zz01x011xx0zz11101zz01xxxzzzxzxzzzzxxxxxxxzxxzzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

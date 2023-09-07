class c_2087_1;
    integer i = -346;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2087_1;
    c_2087_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x11z10x1z00zz00xzx010zx1xx100zzzxxzzzxxxxxxxzzzxxxxxzxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

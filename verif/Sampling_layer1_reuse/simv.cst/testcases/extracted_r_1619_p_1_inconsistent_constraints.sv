class c_1619_1;
    integer i = -268;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1619_1;
    c_1619_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz001x1010x0111xz00z0x0z1z10zx0zxzzxzxxzzzxxxzzzxxxzzxzxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

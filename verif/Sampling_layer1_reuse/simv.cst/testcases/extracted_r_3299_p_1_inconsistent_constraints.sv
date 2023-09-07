class c_3299_1;
    integer i = -548;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3299_1;
    c_3299_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxxzz0z011x1zx10xzz00x0xzzz00xzzxzzzxzxxzzxzzxzxzxxzzzxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

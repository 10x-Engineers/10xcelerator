class c_778_1;
    integer i = -128;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_778_1;
    c_778_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zxz001000z11xxx01111x0011xzxxxxxxxzzzxzzxxzxxzzxzzzzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
class c_2348_1;
    integer i = -390;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2348_1;
    c_2348_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzx1z0xxxx111z11xxx1xzxx00zxx0xxxxzzzzzxxzxzxzxzzzzzzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

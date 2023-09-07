class c_599_1;
    integer i = -98;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_599_1;
    c_599_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xx1zz0011xzzx11x00010z11010x0zxzzxxxxxzzzxzzzzxxzzxxzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

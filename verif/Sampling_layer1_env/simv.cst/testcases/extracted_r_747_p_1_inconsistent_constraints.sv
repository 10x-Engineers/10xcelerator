class c_747_1;
    integer i = -123;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_747_1;
    c_747_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000x0zxx000z001xx01zxzx0xx1z1x0zxzxzzxxxzzxxzzxzxxxxxzxxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

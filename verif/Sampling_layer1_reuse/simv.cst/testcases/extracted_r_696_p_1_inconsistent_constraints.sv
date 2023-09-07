class c_696_1;
    integer i = -114;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_696_1;
    c_696_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0011z0111x1z00010xx1100zzzx1010xzxxzxxzzzzzxxxxzxzzzzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

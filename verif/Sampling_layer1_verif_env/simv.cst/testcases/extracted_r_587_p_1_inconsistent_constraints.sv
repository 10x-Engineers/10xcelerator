class c_587_1;
    integer i = -96;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_587_1;
    c_587_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1100z00110zz001xx1xzxzx1100zxxxxzxxzzzxxxxzzzxxxxzzzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

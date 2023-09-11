class c_3382_1;
    integer i = -562;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3382_1;
    c_3382_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z111zz10zx00zxz1xx110zx0000z0zxxxzxzxzzzxzxxxxzzxxzxxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

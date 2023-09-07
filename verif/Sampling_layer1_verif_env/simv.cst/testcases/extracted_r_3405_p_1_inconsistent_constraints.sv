class c_3405_1;
    integer i = -566;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3405_1;
    c_3405_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zxx000x010001x1zxzx1xzx00z0z0xzxzzzxxxzzxxzzxzzxxxxzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

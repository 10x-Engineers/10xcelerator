class c_1845_1;
    integer i = -306;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1845_1;
    c_1845_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzz10x10zx01x10x1x00z1xx00x01xzxxxxzzzzxxzxxzxzxxzzxxxzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

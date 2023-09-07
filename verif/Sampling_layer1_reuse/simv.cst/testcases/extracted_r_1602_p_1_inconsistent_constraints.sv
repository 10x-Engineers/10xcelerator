class c_1602_1;
    integer i = -265;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1602_1;
    c_1602_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz010z00001x1xx00zz0xx100110zx0zxxxzxxzxxxzxxzxzxxzxzxzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

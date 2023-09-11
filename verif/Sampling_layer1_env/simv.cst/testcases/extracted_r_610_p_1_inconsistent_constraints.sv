class c_610_1;
    integer i = -100;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_610_1;
    c_610_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011z111z00z011zz1zxz0110zxz1x1zxzxzxzzxxxzzzzxzxxzzzxxxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_156_1;
    integer i = -24;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_156_1;
    c_156_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1xx10x01x1zxxxzzzzzx00z1000xxxzxzzxzxzzxzzxxxzzzxzzzxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

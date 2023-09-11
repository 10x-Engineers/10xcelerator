class c_735_1;
    integer i = -121;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_735_1;
    c_735_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzxx10xx1x10zz0xx10x1zxxxx11zxxxxzxzzzxzxxzzzzxxzxxzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

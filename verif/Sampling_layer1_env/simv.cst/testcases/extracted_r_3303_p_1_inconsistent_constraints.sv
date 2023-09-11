class c_3303_1;
    integer i = -549;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3303_1;
    c_3303_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx10xxx0zz0z11zxxz1xxx01xzz0xx1xzzxxzxzxzxzxzzzxzzxzzzzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

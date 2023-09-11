class c_759_1;
    integer i = -125;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_759_1;
    c_759_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx1xz1011xz00001xxz1x1xzz0xxx0zxzxzxxxzzzxzzxzzxxxzzxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

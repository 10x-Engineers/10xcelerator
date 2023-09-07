class c_1194_1;
    integer i = -197;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1194_1;
    c_1194_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0z11zz1110zz10z1zzz0xxx10zz10xxzxzzzzxzzzzxzzzzxxzzzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

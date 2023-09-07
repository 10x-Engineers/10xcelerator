class c_978_1;
    integer i = -161;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_978_1;
    c_978_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xzzx1xzz10z0xx1xx11xxz10x0z1xxxzxzzxzzzxxxxxzxxxzzzxzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

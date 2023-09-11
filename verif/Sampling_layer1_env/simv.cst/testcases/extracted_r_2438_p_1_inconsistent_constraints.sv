class c_2438_1;
    integer i = -405;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2438_1;
    c_2438_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0xx01zx011x0xxz1z1x10zzxz1zx1xzxzzxzzzxxxxxzzzzxzxzzxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

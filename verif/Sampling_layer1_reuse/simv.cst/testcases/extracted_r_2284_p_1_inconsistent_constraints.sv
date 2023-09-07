class c_2284_1;
    integer i = -379;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2284_1;
    c_2284_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1001x1zzz1z1xxx0xxx00x0xx100z0zzzxxxzxzxxxzzxzxzxzxzzxzxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

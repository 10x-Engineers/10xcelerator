class c_1203_1;
    integer i = -199;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1203_1;
    c_1203_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzzzzzz10xxz11x0xxz0zzx1xzzx10xzzxzzxxxzzzzzxzxxzxzxzzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

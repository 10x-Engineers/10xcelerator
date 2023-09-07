class c_2188_1;
    integer i = -363;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2188_1;
    c_2188_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110zz011z011xx01x0zzz0100x1xzzxxzxzxzzzxzxxxzxzzxxxzzzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

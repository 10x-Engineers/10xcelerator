class c_2502_1;
    integer i = -415;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2502_1;
    c_2502_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx11z0000xzzz0x10xxz1x1xzzz1xx0zzzzxzzxzzxzxxzxxxzxxxxxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

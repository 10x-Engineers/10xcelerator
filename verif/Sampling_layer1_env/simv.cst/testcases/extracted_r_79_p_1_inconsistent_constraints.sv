class c_79_1;
    integer i = -12;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_79_1;
    c_79_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z000xxxz01x0x1zzzx111xxz0xz1xzxzzzzxxxzzzzxxzzzxzxxzxxzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

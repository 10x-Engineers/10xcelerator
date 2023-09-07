class c_331_1;
    integer i = -329;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_331_1;
    c_331_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xx100100zzzz10zxz100z1zzz0111zxxzxzzzxzzzzzzxxzzxxzxzzxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_606_1;
    integer i = 606;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_606_1;
    c_606_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0xz10x1x1x0x011xxx1x01x010x10zxxzzxxzxzxxxzxzzxzxzxzzzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

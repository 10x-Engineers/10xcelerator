class c_696_1;
    integer i = 696;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_696_1;
    c_696_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011zz000x1z010zzzxzzzz11xz0xzxzzxzxzxxzxxxzxxxxzxxxxzxzzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_567_1;
    integer i = -565;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_567_1;
    c_567_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xxzx1z1z1z01x1xx0xz11z00x0xxxxzxxzxxzxxzxxxxxxxxzzxxzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

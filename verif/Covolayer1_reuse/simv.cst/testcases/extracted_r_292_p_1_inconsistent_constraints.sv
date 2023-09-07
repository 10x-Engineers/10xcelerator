class c_292_1;
    integer i = -290;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_292_1;
    c_292_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz11zxzx11zx11xz0x0x1xx0x11z11zxxzzzzxxxxzzzxzzzzzzxzxxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

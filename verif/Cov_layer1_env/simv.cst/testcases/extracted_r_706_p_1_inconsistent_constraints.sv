class c_706_1;
    integer i = -704;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_706_1;
    c_706_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z0x10zz10xx11x1zx1zx11z1zxzxxzzxxzxxzxxxxzxxzzzzzxzxxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

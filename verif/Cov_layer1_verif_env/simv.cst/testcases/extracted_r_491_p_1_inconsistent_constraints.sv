class c_491_1;
    integer i = -489;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_491_1;
    c_491_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz00010xxz0xzx01xzzxzxx0z110zx0zzxzzxzxzxxzxxxzxzzxzxxxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

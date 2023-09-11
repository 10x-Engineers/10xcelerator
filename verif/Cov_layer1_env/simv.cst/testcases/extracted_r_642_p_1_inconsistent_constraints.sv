class c_642_1;
    integer i = -640;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_642_1;
    c_642_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzz0x1zz1z0xz1zz00z01x1z1zxz01xzxzzzxzzxzxzzxxxxxzzzzzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

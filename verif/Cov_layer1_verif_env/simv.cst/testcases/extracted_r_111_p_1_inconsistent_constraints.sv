class c_111_1;
    integer i = -109;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_111_1;
    c_111_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz01000zxxx10111z0zz0x0001z11zxzzxzxxxxxxxzxxxxxxxxxzxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

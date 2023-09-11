class c_86_1;
    integer i = -84;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_86_1;
    c_86_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0010x0xzxxx001xx0xz0zx0zz1z1100xzxzzxzxzzxxxxzxzzxzxxxzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_737_1;
    integer i = -735;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_737_1;
    c_737_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0zz1x0001xxxzxzx0zzz10zzz011zxxxxzzzzzxxzxxxxxzxxxxxxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

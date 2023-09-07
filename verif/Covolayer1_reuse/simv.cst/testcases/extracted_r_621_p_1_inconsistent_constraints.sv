class c_621_1;
    integer i = -619;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_621_1;
    c_621_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zzz1011101z0zz01x0xz11z11xxxxzzzxxxzxxxzzxzzxxxxxzxzxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

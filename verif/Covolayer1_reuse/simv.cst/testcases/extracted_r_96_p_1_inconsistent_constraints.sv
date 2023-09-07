class c_96_1;
    integer i = -94;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_96_1;
    c_96_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz010z1x1z11z11zxxz0101z0010zx0xzzzxzxzxxxzxzzxxxxzxzzzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

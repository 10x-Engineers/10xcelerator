class c_63_1;
    integer i = 63;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_63_1;
    c_63_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x11z01zxxxxxz0z0x0x110z1000z11xxxzxzzzzxxxzxxzzxxxxzxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

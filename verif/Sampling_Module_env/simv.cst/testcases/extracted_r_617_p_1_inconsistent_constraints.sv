class c_617_1;
    integer i = 617;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_617_1;
    c_617_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz1x0zxzzz1zz0z0x11z11xxxz011zxzxzxxzzzzzxxxxzxzzxzzxxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

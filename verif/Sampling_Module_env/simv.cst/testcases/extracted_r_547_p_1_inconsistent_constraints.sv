class c_547_1;
    integer i = 547;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_547_1;
    c_547_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x00z11xxx1zz1010z11x00zx1zx0xzzxzxzzzzzzzzzzzxzzxxzxxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

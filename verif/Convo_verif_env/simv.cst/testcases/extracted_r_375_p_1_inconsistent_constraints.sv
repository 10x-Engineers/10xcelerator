class c_375_1;
    integer i = 375;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_375_1;
    c_375_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx0x1z1x11zxxzxx10z1100z1x01zxxxxzzxxzxxzxxxzzxxxxzxxxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

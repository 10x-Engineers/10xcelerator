class c_704_1;
    integer i = 704;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_704_1;
    c_704_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z11z001xxx011zxxxzzxx0zz0x0z11xzxxzzxzzxxzzxxzxzzzzxxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

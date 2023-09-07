class c_671_1;
    integer i = 671;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_671_1;
    c_671_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z011010z10100zz0z1110z101x111x0zzzzzxzzzxzxzzxxxxzzzxzzzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

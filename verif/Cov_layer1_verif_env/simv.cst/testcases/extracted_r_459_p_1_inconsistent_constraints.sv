class c_459_1;
    integer i = -457;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_459_1;
    c_459_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z0x0zx001z00x111zxzzzzzz00100zzzzzxzzzxzxzxxzzzzxxxzxxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

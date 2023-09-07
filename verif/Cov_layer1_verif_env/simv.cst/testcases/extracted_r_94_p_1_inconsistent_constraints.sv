class c_94_1;
    integer i = -92;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_94_1;
    c_94_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111110011000xx11z0zzzzx1xz011100xxzxzzzxxxxzxzzzxzxzzzxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

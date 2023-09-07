class c_328_1;
    integer i = 328;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_328_1;
    c_328_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xzxz1xxx111z011xz1zzzzzx01xzzzzzzzxxxxzzxxzzzzxzxzzxzzzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

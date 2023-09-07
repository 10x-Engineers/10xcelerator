class c_587_1;
    integer i = -585;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_587_1;
    c_587_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x011z1zxzxzxz00xzzxzzz11z1100xxzzxxzzxxxxxxzxzzzxxzzzzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

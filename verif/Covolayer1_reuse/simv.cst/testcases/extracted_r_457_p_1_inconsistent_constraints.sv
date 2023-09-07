class c_457_1;
    integer i = -455;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_457_1;
    c_457_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z000zzxz1z1z1zzzzxxzzz1z10100xxzzzzxxzzzxxzzxxxxxxzxxzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

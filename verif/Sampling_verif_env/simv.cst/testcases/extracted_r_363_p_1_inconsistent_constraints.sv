class c_363_1;
    integer i = 363;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_363_1;
    c_363_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1001x0z1z0x010z00z0z0011z0z0100xzzxxxxxxxxzxxzzzxzxxzxzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

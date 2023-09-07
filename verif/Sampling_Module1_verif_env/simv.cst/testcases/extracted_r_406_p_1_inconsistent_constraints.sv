class c_406_1;
    integer i = 406;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_406_1;
    c_406_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x0x0z0xx10x010zz01011011z1zzzzzzzxxxzzzzzxzzzxzxxzxzzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

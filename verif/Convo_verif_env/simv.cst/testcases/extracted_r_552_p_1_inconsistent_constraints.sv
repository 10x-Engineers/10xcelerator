class c_552_1;
    integer i = 552;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_552_1;
    c_552_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z00z0x0z1zxz11z1xzxzxz1x11101zzxzzzxzzxzzzxxzzxxxzxzxxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

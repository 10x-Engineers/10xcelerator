class c_318_1;
    integer i = 318;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_318_1;
    c_318_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10111110z11x111xxxxx101z1100z0zzzzzzxxzzxzzxxzxxzzxxxzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

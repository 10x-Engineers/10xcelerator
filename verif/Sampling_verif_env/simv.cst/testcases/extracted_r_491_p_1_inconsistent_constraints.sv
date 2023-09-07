class c_491_1;
    integer i = 491;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_491_1;
    c_491_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xxx111z100xz110xz11xx1011x100zzxxxzzzzxzzzxzxzzzxzxzxxzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

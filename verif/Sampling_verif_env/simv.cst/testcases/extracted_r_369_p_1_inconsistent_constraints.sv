class c_369_1;
    integer i = 369;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_369_1;
    c_369_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10z1z0z1z10zxx1x1zz1zz10010zzzxxzxxzzzzzzxzxxzxxzzxxxxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

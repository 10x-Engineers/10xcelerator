class c_23_1;
    integer i = 23;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_23_1;
    c_23_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100zzz1zx11zz1xx0z11x1x000z0x0zxxzxxxxxxzzxzzzzxxzxxzxxzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

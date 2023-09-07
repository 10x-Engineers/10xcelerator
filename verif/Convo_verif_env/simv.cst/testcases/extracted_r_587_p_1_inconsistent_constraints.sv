class c_587_1;
    integer i = 587;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_587_1;
    c_587_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000101z0z0z1z1z11zz11xz10xzx1z1zxxzzxxxzzzxxzxzxxzzzxxxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_747_1;
    integer i = 747;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_747_1;
    c_747_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0z1xxx00x1001x1z0z0x00x1x000zxxzzxzzxzzxxxzzzxzzzxxzzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

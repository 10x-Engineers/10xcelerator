class c_570_1;
    integer i = 570;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_570_1;
    c_570_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xxxzz0011z100x1z0z1z00x11z0z11zxxxzzxzxzzxzxzzzzzzxzxzxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_172_1;
    integer i = -170;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_172_1;
    c_172_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101111x001zzz0z101zxxz0xx1zz0z1xxxzxxxxzxxzzxzxxzzzxzxzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

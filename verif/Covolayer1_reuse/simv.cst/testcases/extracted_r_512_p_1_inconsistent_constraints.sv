class c_512_1;
    integer i = -510;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_512_1;
    c_512_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx11zz111z00zzxz1xxz01xzx110xzzxzxzzxxzxxzxxxzxxxxxxxxzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

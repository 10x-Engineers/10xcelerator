class c_517_1;
    integer i = -515;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_517_1;
    c_517_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111011111z1zz1xzz0z0xxxzxxxzzzxzxzzxxxzxzxxxxzxxzxxzxxxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

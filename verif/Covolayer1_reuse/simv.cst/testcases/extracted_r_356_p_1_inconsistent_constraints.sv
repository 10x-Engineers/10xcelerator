class c_356_1;
    integer i = -354;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_356_1;
    c_356_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z0xxzz10zxxxz0z1x1zx110111zxxxzzzxxxxxzxzxxxzxxxxxzxzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_388_1;
    integer i = 388;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_388_1;
    c_388_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz001x111zzz010zxz10x1x1x1011zxxxzzzzxzzzxzzzxxzxxzzzzxzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_624_1;
    integer i = 624;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_624_1;
    c_624_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z01xz0xxz1x0zz0110zx001zzxxxxzxzxxzzzzzxxxzxxxzxzzzxxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

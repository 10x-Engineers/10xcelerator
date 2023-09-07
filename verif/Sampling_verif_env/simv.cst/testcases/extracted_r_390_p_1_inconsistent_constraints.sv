class c_390_1;
    integer i = 390;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_390_1;
    c_390_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1001zz11zz000z0zz011zxx0zzxzxxzzzzxzzzzxzzxzxxzxxxxxxxzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

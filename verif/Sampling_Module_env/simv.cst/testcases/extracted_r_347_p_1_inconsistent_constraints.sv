class c_347_1;
    integer i = 347;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_347_1;
    c_347_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x1101z0z1zz111zxxz001xxxzzz0xxxxzxzzxxxxxzxxzzxzxzzxxzxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

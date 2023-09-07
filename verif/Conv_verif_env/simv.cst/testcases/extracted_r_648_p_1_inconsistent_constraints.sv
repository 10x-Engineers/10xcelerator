class c_648_1;
    integer i = 648;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_648_1;
    c_648_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xzz1xxx1xz10zz0xzzx010x101z0zzzxxxzxzxxxxzxzxzxxzxxxxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

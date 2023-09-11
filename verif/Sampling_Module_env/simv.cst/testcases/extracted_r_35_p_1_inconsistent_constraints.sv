class c_35_1;
    integer i = 35;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_35_1;
    c_35_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1zxx1z1x0zzz101zz0zz1x11z1xz0xzzxxxxzxxzxzzzzxxzxxxxxxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
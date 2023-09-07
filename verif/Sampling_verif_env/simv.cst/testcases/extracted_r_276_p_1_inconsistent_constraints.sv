class c_276_1;
    integer i = 276;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_276_1;
    c_276_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zxx10x1z1z0zxz1zxzxz001010x0zzxzzzxxxxxxzxzxxxxzzxzxxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

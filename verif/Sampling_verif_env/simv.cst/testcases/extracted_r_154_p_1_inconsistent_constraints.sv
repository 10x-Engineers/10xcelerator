class c_154_1;
    integer i = 154;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_154_1;
    c_154_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxxxzx11z1zzz1z101z0xz1x1z11xzzzxxxzzxxzxxzzzzxzzzxxzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

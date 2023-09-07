class c_475_1;
    integer i = 475;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_475_1;
    c_475_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1010z1011zzx0xxx0zx111xz00xz1x1xxxxzzxxxxxxzxzzxxzxxzxxzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

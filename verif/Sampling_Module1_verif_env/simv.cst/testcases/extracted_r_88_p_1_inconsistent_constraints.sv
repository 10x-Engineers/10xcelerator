class c_88_1;
    integer i = 88;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_88_1;
    c_88_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000z1z1z1xx1zzx0xzxzz110zz1z0x0xxzzxzxzzxxzxxzxzzxzxxxxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

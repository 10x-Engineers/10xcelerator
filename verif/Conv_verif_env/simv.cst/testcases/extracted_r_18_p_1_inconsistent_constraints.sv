class c_18_1;
    integer i = 18;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_18_1;
    c_18_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1x1xz11xxzx1zxxz11zz010x0x0zzxxxzxzxzzzxzxxxzzxxzzzzzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

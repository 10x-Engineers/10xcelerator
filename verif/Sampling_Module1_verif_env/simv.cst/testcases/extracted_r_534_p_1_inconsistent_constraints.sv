class c_534_1;
    integer i = 534;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_534_1;
    c_534_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzxxxzzx0zzz1xxzz1011zz00x1zx1zzzzzzxzxzxxzxzxxzzxxzzxzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

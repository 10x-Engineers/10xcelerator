class c_308_1;
    integer i = -306;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_308_1;
    c_308_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzx0xx0z11xz00zzx11zx1zz00x11xxzxxxzxzzxzxxzzxxzxzxzzzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

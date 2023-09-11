class c_529_1;
    integer i = -527;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_529_1;
    c_529_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx00111z01z0zzx1z1z01xxxz0xz00zzxxxzzxzzxzxxxxxxzxxzzxxzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

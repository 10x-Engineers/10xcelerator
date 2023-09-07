class c_446_1;
    integer i = 446;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_446_1;
    c_446_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxzzx0xz0xxxzz01xx11xx0zx001zxxzzzxzzzzxxxzzzxzzzxzxxxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_751_1;
    integer i = -749;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_751_1;
    c_751_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xx101zx00xx0x000x0xzzx0z1x110zzxxxxxxzzzxxxxzzxzxzzzzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

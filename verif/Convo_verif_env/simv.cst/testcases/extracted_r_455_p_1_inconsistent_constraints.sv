class c_455_1;
    integer i = 455;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_455_1;
    c_455_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z100zz00zx1zx1zzx00000zxx1zxx1xzzxzzxxzzzzzxxxxxxzxzzxzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

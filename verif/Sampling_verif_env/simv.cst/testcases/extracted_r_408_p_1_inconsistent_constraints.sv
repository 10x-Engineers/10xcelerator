class c_408_1;
    integer i = 408;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_408_1;
    c_408_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x101zx1x100z10x11z00zxxxz10z010zxzxxzxxzzzxzxzzxxxxxzxxxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

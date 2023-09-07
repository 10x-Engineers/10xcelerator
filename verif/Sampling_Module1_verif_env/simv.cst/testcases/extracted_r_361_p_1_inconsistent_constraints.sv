class c_361_1;
    integer i = 361;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_361_1;
    c_361_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1x11100z1x0z0zzx0x00zz11z101zzzzxxzzzzzzzxxxxxxzzxzzzzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

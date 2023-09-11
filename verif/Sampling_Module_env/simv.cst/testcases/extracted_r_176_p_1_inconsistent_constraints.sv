class c_176_1;
    integer i = 176;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_176_1;
    c_176_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0110001x11zzx1xxz101z0zzzzxx0zzxxxzxzxzzxzzxzzxxzzzxzzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

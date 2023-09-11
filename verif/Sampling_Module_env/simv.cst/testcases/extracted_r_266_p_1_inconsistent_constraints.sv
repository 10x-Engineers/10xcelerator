class c_266_1;
    integer i = 266;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_266_1;
    c_266_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xxzz1111zx0x1xz1zzx0x00xzz0x1zzxzzzzxzzxxzxzzzxzxxxzzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

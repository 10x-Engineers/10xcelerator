class c_152_1;
    integer i = 152;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_152_1;
    c_152_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x001xx1z1x1zzzx1z1101zzz0z001zzzzzxxzzzxxxzxxzzzzzzzzxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

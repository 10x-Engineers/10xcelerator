class c_405_1;
    integer i = -403;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_405_1;
    c_405_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx00x000z01x0xx0x10zzx0zzz0x01zzzxzzzzzzxxzzzzzxzxzxzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

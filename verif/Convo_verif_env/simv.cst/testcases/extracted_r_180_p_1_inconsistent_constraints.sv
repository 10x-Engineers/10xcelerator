class c_180_1;
    integer i = 180;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_180_1;
    c_180_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0z11zzxx00110x1z00x00zz00zx10zxxzzzzxzzzxxxxxzzxzzzxzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_61_1;
    integer i = 61;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_61_1;
    c_61_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x0x1zzxxxz00z0zz1z0z0011z0101zxxzxzzxzzxzxzxzzzxzxzzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

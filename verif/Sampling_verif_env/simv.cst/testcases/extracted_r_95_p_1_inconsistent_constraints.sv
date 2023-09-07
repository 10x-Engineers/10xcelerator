class c_95_1;
    integer i = 95;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_95_1;
    c_95_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z101x00zx1101zzx01111zx1x1111zxzzxzzzxxzxxzzxzzxzzzxzxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

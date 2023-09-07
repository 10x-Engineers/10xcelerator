class c_456_1;
    integer i = 456;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_456_1;
    c_456_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx00zzzz1x011zx1xz1z1zz0100xx1xxxzxzzxzxzzxzzxxxzzzzzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

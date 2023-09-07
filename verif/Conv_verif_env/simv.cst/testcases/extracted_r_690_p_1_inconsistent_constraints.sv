class c_690_1;
    integer i = 690;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_690_1;
    c_690_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzz00zzz1xzzzx1000z00xx0z1xx01zzzzxxxzzzzxxxxxxxxxzzzxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_233_1;
    integer i = 233;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_233_1;
    c_233_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zzzzxx1xx11zxz1x0111xx1xx0100xxzxzzzzxxxzxxxxxxzxxzxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

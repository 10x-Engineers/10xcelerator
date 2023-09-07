class c_527_1;
    integer i = 527;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_527_1;
    c_527_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx100xx1x0100zz011z1xz1zz00z01xxzxxzxxxxxxxxxzxzxzzzxxxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

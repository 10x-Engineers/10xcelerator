class c_499_1;
    integer i = -497;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_499_1;
    c_499_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zxzzz100zzz10xxxz01zz1x0xxzzxxzxxzzzxzxxzzzzzxzzzzzzzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

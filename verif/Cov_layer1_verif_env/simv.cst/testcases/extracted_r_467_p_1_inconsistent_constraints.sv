class c_467_1;
    integer i = -465;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_467_1;
    c_467_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0zz1z1zzxx0zx1010000zzzzzx11xxzzxzzxzxzxxxzzxzzzzzzxzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

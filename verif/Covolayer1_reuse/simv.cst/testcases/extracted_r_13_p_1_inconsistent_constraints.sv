class c_13_1;
    integer i = -11;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_13_1;
    c_13_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xx1zzzx1000000z00xz1zx1xz0z1xxzzxzzxzxzzzzzxzxzxxxxxzzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

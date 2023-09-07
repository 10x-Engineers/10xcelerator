class c_320_1;
    integer i = -318;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_320_1;
    c_320_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzzz0z0x0x1xx00xz100xxzzx1110xzzzxxzzxzzzzxzzxzxzzzzzxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

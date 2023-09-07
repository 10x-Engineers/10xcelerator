class c_59_1;
    integer i = -57;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_59_1;
    c_59_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101z111x11xx1zx00x001001x0z0x0x1zxzzxzzxzzzzzzzzzzzzzzxxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

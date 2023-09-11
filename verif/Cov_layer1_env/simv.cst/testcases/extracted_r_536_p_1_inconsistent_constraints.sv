class c_536_1;
    integer i = -534;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_536_1;
    c_536_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0x1x0xz1z010001z00xx1x11z0zz0zxxxzzzzzzzzzzzxxxxxzxzxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

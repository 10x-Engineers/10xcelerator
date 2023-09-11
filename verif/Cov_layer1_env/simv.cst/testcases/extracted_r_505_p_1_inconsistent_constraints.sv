class c_505_1;
    integer i = -503;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_505_1;
    c_505_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzxz0z00x111zz01zxzz1x1z00x00xzzxzzxzzxxxzxzzzzzxxxxxzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

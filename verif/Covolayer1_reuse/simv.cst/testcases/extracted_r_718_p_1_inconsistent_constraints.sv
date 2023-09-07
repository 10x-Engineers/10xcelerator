class c_718_1;
    integer i = -716;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_718_1;
    c_718_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz10zx0x10x0xz1101x0x1xxx10z00xzxxzzxzzzzzzzzxxzzxxxzzzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

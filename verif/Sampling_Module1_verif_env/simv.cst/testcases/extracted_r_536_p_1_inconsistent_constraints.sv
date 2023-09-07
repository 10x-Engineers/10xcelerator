class c_536_1;
    integer i = 536;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_536_1;
    c_536_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx10x1x1z0zx11110x1zxz1001x10zxxxzxxxzzxxxxxxzzxzzxzzxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

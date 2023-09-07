class c_382_1;
    integer i = 382;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_382_1;
    c_382_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001x0zxxz00zx11xz1x0zxxxzxx11100zxxxzzzzxxxzzxxzzxzzzxxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

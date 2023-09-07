class c_727_1;
    integer i = 727;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_727_1;
    c_727_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xx11z01x10z1x1zxzzzz1x0xz1zxzzxxxxxxxzzzzxxxzzxxxzzzxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

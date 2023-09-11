class c_140_1;
    integer i = -138;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_140_1;
    c_140_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz0zxzxz110zz1x0100z00zz1zzzx0zxxxzzxxxzxzzzxxzzzxxzzzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

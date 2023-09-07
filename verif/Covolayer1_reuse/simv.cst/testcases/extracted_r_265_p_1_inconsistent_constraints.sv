class c_265_1;
    integer i = -263;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_265_1;
    c_265_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zxx11z1xzxx111z1011001xx101z0xzxzzzxxzzzzxxxxzzzxxxxxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

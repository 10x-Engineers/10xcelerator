class c_113_1;
    integer i = -111;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_113_1;
    c_113_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1010z0zx111x111xxx00xx110zxz1xxzzxzzxxzzxxzxzzzxzzxxxzzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

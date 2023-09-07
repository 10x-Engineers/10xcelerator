class c_538_1;
    integer i = -536;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_538_1;
    c_538_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzzx11011xx1xzzx1001z101z11x11xzzxzzxzxzzzzzxzxxxzzzzxxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

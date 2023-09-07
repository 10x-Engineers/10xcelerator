class c_35_1;
    integer i = -33;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_35_1;
    c_35_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zzxz1x0100z0111xzx0x1xxzzx111xxzxzzzzzxzxzxzxxxzzxxxxzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

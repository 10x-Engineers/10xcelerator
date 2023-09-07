class c_286_1;
    integer i = -284;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_286_1;
    c_286_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00xx110000xzz0xxzzzz1z01x110x1zzxzzxzxxzzzzzxxxzzzzxzxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

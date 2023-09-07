class c_169_1;
    integer i = -167;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_169_1;
    c_169_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x11zxzz0011z0z101zz0zxzz000z11zzxxzzxzxzzxxxzzxzxxzzxzzzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_769_1;
    integer i = -767;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_769_1;
    c_769_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z110z01x0x00x00zx10x1zz010x0zzxxxxzxzxzzzzzzzxzxzzxzzxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

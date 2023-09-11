class c_322_1;
    integer i = -320;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_322_1;
    c_322_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz111zx0z11zzxxx101xxx0x1zxzz1xxzzxzxzzxzxxzzzzzzxzxxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

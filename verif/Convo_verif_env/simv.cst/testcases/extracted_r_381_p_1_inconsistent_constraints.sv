class c_381_1;
    integer i = 381;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_381_1;
    c_381_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz0zx1z1zzx0z1xz0z1z011z0x10xxzzxxxxzzzxxzzzzxxxxxxzzxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

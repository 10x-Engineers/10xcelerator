class c_192_1;
    integer i = -190;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_192_1;
    c_192_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110xxzzz0x1z1zz001100zzz1101011zzzzzxzxzzzzxzzxxxzxzzxzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

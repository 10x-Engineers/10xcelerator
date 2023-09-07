class c_694_1;
    integer i = -692;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_694_1;
    c_694_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x1zx1x1zxz00z0zzz010z0z1x1z1zzxzzzzxzzzxzzzzxzxzzzzxxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

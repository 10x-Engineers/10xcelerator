class c_651_1;
    integer i = -649;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_651_1;
    c_651_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00zz1z1101z1xz00xx1zz1xz0001z0xzzxxzzxxzzzzxzzzzxzxxxxxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_68_1;
    integer i = -66;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_68_1;
    c_68_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xxx10zzz1zzx00z0z0x100xx00011zxxxxxxxzzzzxxzzzxxzxzxzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

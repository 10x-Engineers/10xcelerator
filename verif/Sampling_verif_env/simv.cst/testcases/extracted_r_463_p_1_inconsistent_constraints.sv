class c_463_1;
    integer i = 463;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_463_1;
    c_463_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z0z011100z1xz1zxz1z1111xx0x1zxzxzxzxxxzxxzzzzxxxxxzxzxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

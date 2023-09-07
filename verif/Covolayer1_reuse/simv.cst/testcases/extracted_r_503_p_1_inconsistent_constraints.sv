class c_503_1;
    integer i = -501;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_503_1;
    c_503_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z011zz0z1x1zxxz10zz0xzz1xx1x11zzxxzzxzzzzzzzxzxxzzzzzxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_574_1;
    integer i = 574;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_574_1;
    c_574_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1x0x1xxzx1zzz0xzz001z1x0z000x1xxzzxzzxxxzxzxzxzzxxxxxxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

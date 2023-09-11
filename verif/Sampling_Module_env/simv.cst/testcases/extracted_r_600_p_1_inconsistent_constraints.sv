class c_600_1;
    integer i = 600;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_600_1;
    c_600_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111000zzz0xz1xz0x1x0xx001z1z1z1zxzxxzzzxzxzzzzzxxxzxxxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_480_1;
    integer i = 480;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_480_1;
    c_480_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0001000z1xzxz0xz1x1x1xx0z0x1011xzzxxxzxxxxxzzzzzxxzxxxzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

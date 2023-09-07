class c_306_1;
    integer i = 306;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_306_1;
    c_306_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11z000111x1z0z0xzz1z1xx0x1xz0zxxxxxxxzzxxzxxxzzzzzxxxzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

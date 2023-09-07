class c_229_1;
    integer i = -227;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_229_1;
    c_229_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx0z1xzzx1zz0zxz11xxzx10zxx00zxzxzxzxxzzzxxzzxxzzzzxxzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

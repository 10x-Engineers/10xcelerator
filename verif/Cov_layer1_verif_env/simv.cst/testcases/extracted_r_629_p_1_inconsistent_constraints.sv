class c_629_1;
    integer i = -627;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_629_1;
    c_629_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx0xzzzz1xzxx11zzzzzzzzx1x10xzxxzxzxxxxzxxzxxzzzxxxxxxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

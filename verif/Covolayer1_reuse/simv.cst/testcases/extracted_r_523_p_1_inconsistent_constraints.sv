class c_523_1;
    integer i = -521;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_523_1;
    c_523_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0xzz0x11x0zx0x0zz11zx0xz111zxzzxxzzxxzxxzxxzxzzzxxxxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

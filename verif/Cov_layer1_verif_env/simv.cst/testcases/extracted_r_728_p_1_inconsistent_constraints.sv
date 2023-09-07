class c_728_1;
    integer i = -726;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_728_1;
    c_728_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001z1010xzz0zxz0x0xz1zxx11z1x0zxxxxxxzxzxzzzxxzxxzzzxxzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

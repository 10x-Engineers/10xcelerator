class c_634_1;
    integer i = -632;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_634_1;
    c_634_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx11z0x0x100zxz0x1xxzzxxz110zzzxzxxxzxzxzzzzxxzzzzzxzxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

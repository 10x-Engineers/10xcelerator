class c_757_1;
    integer i = 757;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_757_1;
    c_757_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xz1xzxx0zx01xzxz1zz0010xz0zxx0zzzzzxzzxzxxzxzzzzxzzxzxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

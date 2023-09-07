class c_419_1;
    integer i = 419;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_419_1;
    c_419_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx1xxz1z1000101z101xx0xzxz0zx11zxxxxxzxzzzxxxzxxzzzxzzxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

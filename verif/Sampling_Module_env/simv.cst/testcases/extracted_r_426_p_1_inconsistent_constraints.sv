class c_426_1;
    integer i = 426;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_426_1;
    c_426_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zx10x110x1zxxz0xzzz00zx0zxz0xzzxzzxzxxxzzzxxxzxxzzzzzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

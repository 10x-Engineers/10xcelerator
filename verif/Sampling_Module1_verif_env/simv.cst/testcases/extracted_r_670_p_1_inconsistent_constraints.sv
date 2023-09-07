class c_670_1;
    integer i = 670;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_670_1;
    c_670_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11zx1000z1001zz1xx10x0z0101zxzxxzxxzzzxxxzxxxzxzzxzzzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

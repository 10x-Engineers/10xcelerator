class c_614_1;
    integer i = 614;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_614_1;
    c_614_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xzzx0zx111x111z1zx0zz1x1xx100xxzzxzxzzxzxxxzzxzzzzzzxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

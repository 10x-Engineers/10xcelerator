class c_657_1;
    integer i = -655;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_657_1;
    c_657_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1001z00z0101xzzx0z1x0zx1xxx001zxxxzxxzzxxzxzxzzzzzxzxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

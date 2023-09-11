class c_662_1;
    integer i = 662;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_662_1;
    c_662_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00z0z1x0001x1xxzxx0z110xxx1zxxzxzxzzxzzzxzxzxxxxxxzzzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

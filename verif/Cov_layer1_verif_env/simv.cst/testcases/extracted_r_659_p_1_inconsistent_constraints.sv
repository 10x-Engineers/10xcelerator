class c_659_1;
    integer i = -657;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_659_1;
    c_659_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx0xzzz000zz11xzzz1z1zxxzzz1xxxzzxzzzxxxzzxxxxxxzxxzzxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

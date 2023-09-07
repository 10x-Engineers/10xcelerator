class c_655_1;
    integer i = 655;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_655_1;
    c_655_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x101xxxxx1zzz0zzz1x0zx00101z100xxzxxxzzzzzzxxxzzzxxxzxzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

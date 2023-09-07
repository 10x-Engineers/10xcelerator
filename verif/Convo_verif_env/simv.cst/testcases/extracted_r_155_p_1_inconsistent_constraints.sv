class c_155_1;
    integer i = 155;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_155_1;
    c_155_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzzz000x11z010111zxz0111zxxx01xxzxzzxzxzxzxxxzxzzzxzzxzxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

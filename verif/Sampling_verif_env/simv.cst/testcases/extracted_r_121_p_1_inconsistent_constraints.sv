class c_121_1;
    integer i = 121;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_121_1;
    c_121_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz1xx1x1010z010xxxz0xz1z1xxx01xxzxxxzxzxzzzxxxzzzzxxzxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

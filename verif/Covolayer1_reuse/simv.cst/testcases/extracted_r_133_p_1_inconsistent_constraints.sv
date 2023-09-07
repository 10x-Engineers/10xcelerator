class c_133_1;
    integer i = -131;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_133_1;
    c_133_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1x10x0xxx10001xx0zxz1xx0xxzx0xxxxxxzzzxzzzxxxzzzxxzzzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

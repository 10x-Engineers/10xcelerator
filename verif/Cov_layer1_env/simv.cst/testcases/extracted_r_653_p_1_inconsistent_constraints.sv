class c_653_1;
    integer i = -651;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_653_1;
    c_653_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xx1xz1xx1xx0zzz1z010xzxz1x0x0xzxxxzzxxzxxxzzzxzxxxzxzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

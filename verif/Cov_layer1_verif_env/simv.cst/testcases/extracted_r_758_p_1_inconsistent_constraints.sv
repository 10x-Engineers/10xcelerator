class c_758_1;
    integer i = -756;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_758_1;
    c_758_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1z100x1z1xzx10xx01xzxx1zz1xx0xzxzxzxzzxzxxxzzzzzzxxzzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

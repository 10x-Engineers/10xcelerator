class c_720_1;
    integer i = -718;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_720_1;
    c_720_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1zxzxx11xzz1z0z11z10xx0z1xxx0xxxxxzzxzzzzxxxxzxzzzzzzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

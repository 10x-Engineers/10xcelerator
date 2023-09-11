class c_681_1;
    integer i = 681;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_681_1;
    c_681_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zx0z100001x010zxzxz01xzxx11z1zxxxxxxzxxzzzzxzzxxxxxxxzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

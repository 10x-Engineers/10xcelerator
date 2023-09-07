class c_382_1;
    integer i = -380;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_382_1;
    c_382_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xz1xzxzz01x1z011x101xzz001zzzzzzzzzzzzxzxxzxzxxxzxzzxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_361_1;
    integer i = -359;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_361_1;
    c_361_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzz11101zzxxzz1xzxx0z0zx0000xz0xxxxzxxxxzxzxzxxzzzxxzxxxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

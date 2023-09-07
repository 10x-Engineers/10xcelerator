class c_546_1;
    integer i = 546;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_546_1;
    c_546_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx11xzz0x1xzz0z1100x0xxxz0110zzzzxxzxxzxzxxzzxzxxzxxxzxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

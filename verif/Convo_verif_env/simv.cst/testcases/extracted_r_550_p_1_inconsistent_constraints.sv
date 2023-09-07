class c_550_1;
    integer i = 550;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_550_1;
    c_550_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101z1z1xzz010x11xzzx0xxxz1xx0x0xxxzxxzzxzxxzzxzzxzxzxzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

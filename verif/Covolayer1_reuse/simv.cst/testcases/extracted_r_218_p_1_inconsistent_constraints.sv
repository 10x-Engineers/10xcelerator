class c_218_1;
    integer i = -216;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_218_1;
    c_218_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx1xzz11111xxx10xx0zxz01z11xx0xxxzzzzzzxxzxxxzxxxzzxxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

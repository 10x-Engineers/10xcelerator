class c_717_1;
    integer i = 717;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_717_1;
    c_717_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxz10x100zxzz10zx0xxxz101xxxx01xxzzxzxxxxzxzxxzzzzzxxxzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

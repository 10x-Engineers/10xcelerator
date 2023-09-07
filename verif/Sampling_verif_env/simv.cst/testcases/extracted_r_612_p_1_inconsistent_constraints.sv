class c_612_1;
    integer i = 612;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_612_1;
    c_612_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100zx1zxz10101x000xxxxxz1001101zxzzzzxxxzzxzxzxxzxzxxzzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

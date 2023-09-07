class c_639_1;
    integer i = -637;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_639_1;
    c_639_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx1zxz01zzzx10010zxzxx1zz100zxzzzxzzzxzxzxzzxzzxzzzzzzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

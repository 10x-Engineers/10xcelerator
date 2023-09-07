class c_749_1;
    integer i = 749;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_749_1;
    c_749_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx111111zz01xzx0xxx11x0xzxzx11zxzxzzxxxxzzzzzzxzzzzxzzzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

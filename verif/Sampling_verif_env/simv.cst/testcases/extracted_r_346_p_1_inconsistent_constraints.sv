class c_346_1;
    integer i = 346;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_346_1;
    c_346_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0001xxx100zxxx1xxx0x01111xz0100zzxzzzzzxzzzzxzxzzxxxzxxxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

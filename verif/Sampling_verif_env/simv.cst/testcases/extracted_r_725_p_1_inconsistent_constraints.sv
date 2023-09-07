class c_725_1;
    integer i = 725;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_725_1;
    c_725_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xxx0x00100xxxz10xxz1x0z10x010xxxzxxxxzzzzxzxzxxxzxxxzxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

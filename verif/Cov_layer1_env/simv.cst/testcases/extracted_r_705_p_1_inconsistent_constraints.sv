class c_705_1;
    integer i = -703;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_705_1;
    c_705_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xx00zxx101011z0x110zz10x1x1x00zxxxxzxxxxzzzzzxxzzxxxxxzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

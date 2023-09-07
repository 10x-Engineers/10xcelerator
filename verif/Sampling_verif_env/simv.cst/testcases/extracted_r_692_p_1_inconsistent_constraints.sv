class c_692_1;
    integer i = 692;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_692_1;
    c_692_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz111x11z0xzzzzz0xx10x0xx00xx00zxzzzxxxxxzzzzxxzzzxzxzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

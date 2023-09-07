class c_279_1;
    integer i = -277;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_279_1;
    c_279_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz011z1x0zxx01xz0110z10xzx110xxxzxzzzzxzxzzxxxzxzzzxzzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

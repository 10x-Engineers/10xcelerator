class c_210_1;
    integer i = -208;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_210_1;
    c_210_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xxx111xxxzz0xx00111x1x0xz1xxzzzzzzzxzxxxxxzzzzzzxxxzxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

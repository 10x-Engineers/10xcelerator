class c_409_1;
    integer i = -407;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_409_1;
    c_409_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0x1x1000001xzxx1zx1zz10x0xzx1xxxzxzxzzzxxxzzzxxxxxxxxxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_227_1;
    integer i = -225;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_227_1;
    c_227_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz01xz1z01x1x01zx0z1zx10x1x10xxzzxzxzzxzzxzzxzzxzxzzxxzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_357_1;
    integer i = -355;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_357_1;
    c_357_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x0x11xzz0xzx1x0z01zxzzxzxz111xxxzzzzxzxzzzzxzzzxzzxxxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

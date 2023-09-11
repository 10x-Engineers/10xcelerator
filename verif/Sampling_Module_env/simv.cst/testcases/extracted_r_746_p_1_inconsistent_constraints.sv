class c_746_1;
    integer i = 746;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_746_1;
    c_746_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz0z011zx11xxzx0110z101z1zxxx1xxzxzzxxxxxzxzzxxzzxxzzxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

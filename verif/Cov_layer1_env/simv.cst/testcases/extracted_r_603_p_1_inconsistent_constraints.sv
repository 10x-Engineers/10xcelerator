class c_603_1;
    integer i = -601;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_603_1;
    c_603_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1010zx0100z0z0zz10100zxx01xx0xxzzzzzxxxxxxzzxxzzzzxxzxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

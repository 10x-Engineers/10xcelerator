class c_98_1;
    integer i = -96;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_98_1;
    c_98_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00011z0xz1z0z111z0xzz110z1zx1z1zzxzzzzxxzxxxxzzzxxxxxxxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

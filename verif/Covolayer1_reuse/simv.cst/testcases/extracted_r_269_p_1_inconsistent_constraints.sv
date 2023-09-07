class c_269_1;
    integer i = -267;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_269_1;
    c_269_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1zz1x11xz0xzxxz0x11xz1110x0xzzxxxxzxzxxzzzxxzzzxzxzzxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

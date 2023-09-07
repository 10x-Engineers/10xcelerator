class c_490_1;
    integer i = -488;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_490_1;
    c_490_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011011111x0x0011z00001x11zz0z1x0xzzzzxxzxzzzxxxxxzzxzxzzxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

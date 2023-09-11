class c_47_1;
    integer i = -45;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_47_1;
    c_47_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz00z1z1x1xxxzx0zz001x0zx0x0xxxzxzzzxzzxxxzxzxzxzzzxzxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

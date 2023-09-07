class c_447_1;
    integer i = -445;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_447_1;
    c_447_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1x1010z00z0z0x0x000xx0x00111zxxxzzxzzxzxzzxxzxzxxxxxxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_402_1;
    integer i = -400;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_402_1;
    c_402_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x00zz01011011xxz0111xx1xxz0x10xzzxxxxxzxxxxzzxxzxzzxxxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

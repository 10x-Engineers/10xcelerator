class c_550_1;
    integer i = -548;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_550_1;
    c_550_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzx0z0x1zz1zx01zx000z11xzzxz01zxzzzxxzxzzxzxzxzxxxzxxzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

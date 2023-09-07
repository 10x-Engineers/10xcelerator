class c_69_1;
    integer i = 69;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_69_1;
    c_69_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xzxxzz0xz1x010zx1xxz00zz11xxzzzzzxzxxxxzzxzxxxxxxxxxxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

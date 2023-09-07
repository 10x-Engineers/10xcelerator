class c_45_1;
    integer i = -43;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_45_1;
    c_45_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx01x10zzxx01zx10111x001zx0xx11xxxxzxzxxzzxxzxxzxzzxxxzzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

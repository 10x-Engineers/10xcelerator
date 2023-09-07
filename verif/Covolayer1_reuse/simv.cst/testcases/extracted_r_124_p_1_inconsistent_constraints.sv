class c_124_1;
    integer i = -122;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_124_1;
    c_124_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000zzxxzxx00010011zx1zx0z1x1111zzzzxzxzxzzxzzzzxxzxzxzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_742_1;
    integer i = 742;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_742_1;
    c_742_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0011x1011zx1z1zx00z01xz1zx00xxxxzzzxxxxxzzzzzzzzxzzzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

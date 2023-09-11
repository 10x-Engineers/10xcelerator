class c_404_1;
    integer i = 404;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_404_1;
    c_404_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100z1x0xzz1x101zx1zzx0xx11x1z1x0zxxxzzxxxxxzxzxzxxzzxxzzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

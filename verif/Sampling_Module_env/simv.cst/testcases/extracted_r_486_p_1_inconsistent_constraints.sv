class c_486_1;
    integer i = 486;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_486_1;
    c_486_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx1z01xzxx1x1z0xz11zz0xzxxz10xxzzzzzxxxzxxxxzxzxxxxxzzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_613_1;
    integer i = 613;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_613_1;
    c_613_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x1xzz001z01zz0z0001z0xz0011x0zxxzxzxzzxxzxzzxxxxzxxxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

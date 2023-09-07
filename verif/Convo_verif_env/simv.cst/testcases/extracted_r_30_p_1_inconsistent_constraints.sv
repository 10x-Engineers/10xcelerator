class c_30_1;
    integer i = 30;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_30_1;
    c_30_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx0zx1z1001xx0x0z0x11x0x001xz0zxxxzxxzxzxxzzzxxxxzxxxxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

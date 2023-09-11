class c_161_1;
    integer i = 161;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_161_1;
    c_161_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101011z1zxxzx1x0xz0xzzzx1x1xzxzzxzxzxxxzzxxxzzzxxxzxxxzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

class c_189_1;
    integer i = 189;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_189_1;
    c_189_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x01zxzx1x110zzxxz10z1xz1xz111xxzxxzzzzzxzxxxxzxxzxzxzzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

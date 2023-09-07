class c_386_1;
    integer i = 386;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_386_1;
    c_386_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx01zxz10x1zxxz1zz0zzxx1x11xz0xxzzzxzxxzzxxzxzzxxzxxxzxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

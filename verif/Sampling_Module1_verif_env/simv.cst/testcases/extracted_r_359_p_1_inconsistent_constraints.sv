class c_359_1;
    integer i = 359;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_359_1;
    c_359_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz1001zz0001z0xz01zx1x100xz10zxxxxzxxxxxxxzzxzxxxxzzzzzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

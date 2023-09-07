class c_194_1;
    integer i = 194;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_194_1;
    c_194_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx1x11x00xz110011z1z010x001z00xxxzxzxxxxzzzzzxxxzzxxxzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

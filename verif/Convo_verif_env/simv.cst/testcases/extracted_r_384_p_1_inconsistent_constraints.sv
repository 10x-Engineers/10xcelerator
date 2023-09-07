class c_384_1;
    integer i = 384;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_384_1;
    c_384_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1z1zxx10x000x1x101zx1x01x0zx1xzxxxxxzxxzzzxxzxxzzxxxzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

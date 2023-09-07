class c_758_1;
    integer i = 758;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_758_1;
    c_758_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx1110zxxxz1100xzz1xz0x0zx001xxzzxxzxzzzzzzzxzxxzzzzzzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

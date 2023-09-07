class c_323_1;
    integer i = 323;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_323_1;
    c_323_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x011xx0x0010xxx1z000x1z10x100zxzzzzzzzzxzzxzxxxxxxzxxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

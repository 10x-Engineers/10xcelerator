class c_180_1;
    integer i = -178;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_180_1;
    c_180_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01x11xx1xx0x11z00x0z0101z0x100xxzzxxzzzxzzzzxzzzzxzxxzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

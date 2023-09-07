class c_513_1;
    integer i = 513;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_513_1;
    c_513_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x1x0x00x0z0xxzz100010z110z101zzzxzxxzzzzzxxzxzzzzxxzzxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

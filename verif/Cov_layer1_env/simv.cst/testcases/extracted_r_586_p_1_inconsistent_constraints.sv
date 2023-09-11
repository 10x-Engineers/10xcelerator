class c_586_1;
    integer i = -584;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_586_1;
    c_586_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zxx0x01100z1x0z01xzxz00z0zxzzzxxxxzzxxzxxxzxxxzxxzxxxzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

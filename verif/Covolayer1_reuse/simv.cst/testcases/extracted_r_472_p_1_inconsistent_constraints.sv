class c_472_1;
    integer i = -470;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_472_1;
    c_472_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zzzx1z0z0zxx0100z1zz1z10z0z1zzxxzxzxzxzxzxxxxzxxzxxzzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

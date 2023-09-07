class c_553_1;
    integer i = -551;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_553_1;
    c_553_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x000xx01zx0zxz1z0x01z00xz1z10z1zxzxxzxxxzzxzxzzzzxxzzzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

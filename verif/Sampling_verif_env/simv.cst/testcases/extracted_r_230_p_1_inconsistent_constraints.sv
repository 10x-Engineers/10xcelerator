class c_230_1;
    integer i = 230;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_230_1;
    c_230_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0zzz1zxxz101z1z1xxzxxxx1zx01xxzzzzxxxxxzzzxxzxxxzzxxxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

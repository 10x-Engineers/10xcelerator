class c_73_1;
    integer i = -71;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_73_1;
    c_73_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010z111xx0zx1011xxx111x01z01011xzxxxzzzxzxzzzxxzxzzzzzzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
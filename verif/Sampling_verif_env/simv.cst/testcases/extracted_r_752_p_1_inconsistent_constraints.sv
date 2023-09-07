class c_752_1;
    integer i = 752;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_752_1;
    c_752_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zxzx01z0xxxxz00xz110zx11zxzxx1zxzzxxzxxxzxzzxzzxzxxzxxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

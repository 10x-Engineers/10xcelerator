class c_660_1;
    integer i = -658;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_660_1;
    c_660_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxzz11xxx1x0zx1zzz0zxz01z0xz00zxxzzxxzzxzxzzzzxxzxzxxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

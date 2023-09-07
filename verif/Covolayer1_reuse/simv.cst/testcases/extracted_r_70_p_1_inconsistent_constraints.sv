class c_70_1;
    integer i = -68;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_70_1;
    c_70_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xx0zxx00z01z0x00zzx1xz0zzx010zxzzxzzxzzzzxxxzzzxzxzzxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

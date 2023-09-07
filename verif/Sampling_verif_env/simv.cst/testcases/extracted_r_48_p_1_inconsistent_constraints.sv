class c_48_1;
    integer i = 48;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_48_1;
    c_48_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzzx000xz0z1x01z101xxz1000zxx01zxzxzzzzxxxxxxzxxzzxxzzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram

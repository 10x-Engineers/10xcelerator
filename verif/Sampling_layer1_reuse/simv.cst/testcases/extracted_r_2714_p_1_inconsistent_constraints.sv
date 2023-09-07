class c_2714_1;
    integer i = -451;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2714_1;
    c_2714_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x011x1z0x10xxz10100001xz01z0zxzxxxzzxxxzzzxxzzxzxxxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
